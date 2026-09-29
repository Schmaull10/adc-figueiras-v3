# Templates de email — ADC Figueiras

Configurar em Supabase → Authentication → Email Templates.

## Confirm sign up
Assunto: `ADC Figueiras — Confirma o teu email`

```html
<div style="font-family:Arial,sans-serif;max-width:560px;margin:auto;color:#17201b">
  <h2 style="color:#0b6437">Bem-vindo ao ADC Figueiras</h2>
  <p>Recebemos um pedido para criar uma conta na plataforma do ADC Figueiras.</p>
  <p>Confirma o teu endereço de email para concluir o registo.</p>
  <p style="margin:28px 0"><a href="{{ .ConfirmationURL }}" style="background:#0b6437;color:#fff;text-decoration:none;padding:12px 18px;border-radius:8px;font-weight:700">Confirmar email</a></p>
  <p style="font-size:13px;color:#66736b">Se não criaste esta conta, podes ignorar esta mensagem.</p>
  <p>ADC Figueiras</p>
</div>
```

## Reset password / Recovery
Assunto: `ADC Figueiras — Recuperar palavra-passe`

```html
<div style="font-family:Arial,sans-serif;max-width:560px;margin:auto;color:#17201b">
  <h2 style="color:#0b6437">Recuperação de palavra-passe</h2>
  <p>Foi pedido um link para definir uma nova palavra-passe na tua conta ADC Figueiras.</p>
  <p style="margin:28px 0"><a href="{{ .ConfirmationURL }}" style="background:#0b6437;color:#fff;text-decoration:none;padding:12px 18px;border-radius:8px;font-weight:700">Definir nova palavra-passe</a></p>
  <p style="font-size:13px;color:#66736b">Se não fizeste este pedido, não precisas de fazer nada.</p>
  <p>ADC Figueiras</p>
</div>
```

## Change email address
Assunto: `ADC Figueiras — Confirmar novo email`

```html
<div style="font-family:Arial,sans-serif;max-width:560px;margin:auto;color:#17201b">
  <h2 style="color:#0b6437">Confirmar alteração de email</h2>
  <p>Foi pedida a alteração do endereço de email associado à tua conta ADC Figueiras.</p>
  <p>Novo endereço: <strong>{{ .NewEmail }}</strong></p>
  <p style="margin:28px 0"><a href="{{ .ConfirmationURL }}" style="background:#0b6437;color:#fff;text-decoration:none;padding:12px 18px;border-radius:8px;font-weight:700">Confirmar novo email</a></p>
  <p style="font-size:13px;color:#66736b">Se não pediste esta alteração, não confirmes o pedido.</p>
  <p>ADC Figueiras</p>
</div>
```

## Invite user (opcional)
Assunto: `ADC Figueiras — Convite para a plataforma`

```html
<div style="font-family:Arial,sans-serif;max-width:560px;margin:auto;color:#17201b">
  <h2 style="color:#0b6437">Convite ADC Figueiras</h2>
  <p>Foste convidado a aceder à plataforma do ADC Figueiras.</p>
  <p style="margin:28px 0"><a href="{{ .ConfirmationURL }}" style="background:#0b6437;color:#fff;text-decoration:none;padding:12px 18px;border-radius:8px;font-weight:700">Aceitar convite</a></p>
  <p>ADC Figueiras</p>
</div>
```

## Password changed — Security notification (se ativada)
Assunto: `ADC Figueiras — A tua palavra-passe foi alterada`

```html
<div style="font-family:Arial,sans-serif;max-width:560px;margin:auto;color:#17201b">
  <h2 style="color:#0b6437">Palavra-passe alterada</h2>
  <p>A palavra-passe da tua conta ADC Figueiras foi alterada.</p>
  <p>Se foste tu, não é necessário fazer nada. Se não reconheces esta alteração, contacta imediatamente o clube e recupera o acesso à conta.</p>
  <p>ADC Figueiras</p>
</div>
```

Os links usam `{{ .ConfirmationURL }}`, variável oficial dos templates Supabase Auth. Os templates podem ser guardados antes de configurar SMTP próprio.
