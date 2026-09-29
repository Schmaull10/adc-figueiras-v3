# V3.14 — Release Candidate

## Privacidade
- Nova área `Privacidade` disponível também em modo público.
- Política de acesso aos dados explicada por função.
- Pesagens identificadas explicitamente como dados internos, visíveis aos jogadores e funções internas na configuração atual.
- Registo no Supabase de que o utilizador tomou conhecimento da versão atual da política.
- Onboarding de privacidade para contas que ainda não confirmaram a política.

## Permissões
- Capitão mantém gestão de multas individuais.
- Capitão deixa de ter acesso à página de regras de multas.
- Regras de multas ficam restritas na interface e no backend a Equipa Técnica e Admin.
- Multas reforçadas no backend: Jogador vê apenas as próprias; Capitão/Equipa Técnica/Admin podem consultar e gerir as da equipa.
- Matriz de permissões incluída nas Definições do Admin.

## Onboarding e conta
- Checklist de primeiro acesso: email, privacidade, push, instalação da PWA e estado de sócio.
- Passwords novas exigem mínimo de 8 caracteres no frontend.
- Pedido de número de sócio continua sempre dependente de aprovação do Admin.

## Release / fiabilidade
- Checklist de Release Candidate nas Definições.
- Verificação visual de Supabase, época/clube, plantel, 156 jogos do campeonato, Match Center, treinos/pesagens, multas, contas, notificações e privacidade.
- SMTP assinalado como último passo externo antes do lançamento.
- Textos de migração/teste limpos nas áreas principais.
- Service worker/cache atualizado para V3.14.
- PWA passa a apresentar o nome `ADC Figueiras`.
