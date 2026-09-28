-- =========================================================
-- ADC FIGUEIRAS V3.6
-- MULTAS ONLINE — DATA DA MULTA + DESCRIÇÃO DAS REGRAS
-- =========================================================

alter table public.fine_rules
  add column if not exists description text;

alter table public.fines
  add column if not exists occurred_on date;

update public.fines f
set occurred_on = coalesce(
  (
    select (t.scheduled_at at time zone 'Europe/Lisbon')::date
    from public.trainings t
    where f.source_type = 'training_late'
      and t.id = f.source_id
    limit 1
  ),
  (f.created_at at time zone 'Europe/Lisbon')::date,
  current_date
)
where f.occurred_on is null;

alter table public.fines
  alter column occurred_on set default current_date;

alter table public.fines
  alter column occurred_on set not null;

create or replace function private.sync_training_late_fine()
returns trigger
language plpgsql
security definer
set search_path = ''
as $$
declare
    v_training_id uuid;
    v_player_id uuid;
    v_attendance_status text;

    v_season_id uuid;
    v_training_date date;

    v_rule_id uuid;
    v_reason text;
    v_amount numeric(8,2);
begin

    if TG_OP = 'DELETE' then
        v_training_id := old.training_id;
        v_player_id := old.player_id;
        v_attendance_status := null;
    else
        v_training_id := new.training_id;
        v_player_id := new.player_id;
        v_attendance_status := new.status;
    end if;

    select
        t.season_id,
        (t.scheduled_at at time zone 'Europe/Lisbon')::date
    into
        v_season_id,
        v_training_date
    from public.trainings t
    where t.id = v_training_id;

    if v_attendance_status is distinct from 'late' then

        update public.fines
        set
            status = 'cancelled',
            paid_at = null,
            paid_by = null,
            updated_at = now()
        where
            player_id = v_player_id
            and source_type = 'training_late'
            and source_id = v_training_id
            and status <> 'cancelled';

        if TG_OP = 'DELETE' then
            return old;
        else
            return new;
        end if;

    end if;

    select
        fr.id,
        fr.reason,
        fr.amount
    into
        v_rule_id,
        v_reason,
        v_amount
    from public.fine_rules fr
    where
        fr.season_id = v_season_id
        and fr.code = 'training_late'
        and fr.active = true
        and fr.automatic = true
    limit 1;

    if not found then

        update public.fines
        set
            status = 'cancelled',
            paid_at = null,
            paid_by = null,
            updated_at = now()
        where
            player_id = v_player_id
            and source_type = 'training_late'
            and source_id = v_training_id
            and status <> 'cancelled';

        return new;

    end if;

    update public.fines
    set
        rule_id = v_rule_id,
        reason = v_reason,
        occurred_on = v_training_date,
        amount = case
            when status = 'cancelled' then v_amount
            else amount
        end,
        status = case
            when status = 'cancelled' then 'pending'
            else status
        end,
        updated_at = now()
    where
        player_id = v_player_id
        and source_type = 'training_late'
        and source_id = v_training_id;

    if not found then

        insert into public.fines (
            season_id,
            player_id,
            rule_id,
            reason,
            amount,
            status,
            source_type,
            source_id,
            occurred_on,
            created_by
        )
        values (
            v_season_id,
            v_player_id,
            v_rule_id,
            v_reason,
            v_amount,
            'pending',
            'training_late',
            v_training_id,
            v_training_date,
            auth.uid()
        );

    end if;

    return new;

end;
$$;

revoke all
on function private.sync_training_late_fine()
from public;

update public.fine_rules
set description = 'Aplica automaticamente uma multa quando um jogador fica marcado como Atrasado num treino.'
where code = 'training_late'
  and (description is null or btrim(description) = '');

update public.app_settings
set schema_version = greatest(schema_version, 2)
where id = true;

-- =========================================================
-- FIM
-- =========================================================
