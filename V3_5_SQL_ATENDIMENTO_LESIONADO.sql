-- ADC Figueiras V3.5
-- Permite manter o estado "Lesionado" também no registo de presença do treino.

alter table public.training_attendance
  drop constraint if exists training_attendance_status_check;

alter table public.training_attendance
  add constraint training_attendance_status_check
  check (status in ('present','late','absent','injured'));
