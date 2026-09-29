# ADC Figueiras V3.12 — Recuperação de palavra-passe

- Adicionado "Esqueci-me da palavra-passe" no ecrã de login.
- Pedido de link de recuperação através do Supabase Auth.
- Mensagem neutra para evitar revelar se um email tem conta.
- Tratamento do evento PASSWORD_RECOVERY e do link de recuperação.
- Novo ecrã para definir e confirmar uma nova palavra-passe.
- Após alteração, a sessão temporária de recuperação é terminada e o utilizador volta ao login.
- Confirmação de email de novos registos passa a usar explicitamente o URL atual da app como redirect.
- Mensagens de autenticação mais claras para credenciais incorretas, email não confirmado, rate-limit e links expirados.
- Cache/service worker atualizado para V3.12.
- Diagnóstico: `v3.12-password-recovery`.
