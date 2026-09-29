# V3.10.2 — Push onboarding

- Primeiro login/abertura autenticada num dispositivo sem push ativo mostra um pedido interno para ativar notificações.
- O pedido real do sistema operativo só é feito depois de o utilizador tocar em **Ativar notificações**, respeitando as regras dos browsers.
- **Agora não** não bloqueia nada: a ativação continua disponível na área Notificações.
- O aviso é guardado por utilizador e dispositivo para não aparecer repetidamente.
- Cache PWA atualizado.

# V3.10.1 — Correção de atualização da PWA

- Corrige o cabeçalho que ainda mostrava V3.9.1.
- HTML, JavaScript, CSS e manifest passam a privilegiar a versão de rede quando há Internet.
- Mantém fallback offline pela cache.
- O registo do service worker força verificação de atualização sem usar a cache HTTP.
- Assets principais usam cache-busting para destravar instalações Android presas em versões antigas.
- Mantém o Web Push pilot da V3.10.
