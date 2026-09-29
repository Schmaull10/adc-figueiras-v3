# V3.15 — Final Candidate

Build final antes da configuração SMTP e do lançamento 1.0.

## Release e auditoria
- Checklist de lançamento consolidada em Definições.
- SMTP passa a aparecer explicitamente como último bloqueador externo.
- Nova auditoria automática de release através do Supabase: RLS das tabelas críticas, Admin ativo, época ativa, 156 jogos do campeonato e Cron de push.
- Novo snapshot de release exportável em JSON, combinando dados online essenciais e o estado local da aplicação.
- Limpeza controlada das notificações de teste conhecidas usadas durante a validação do Web Push.

## Primeiro acesso
- Guia curto no primeiro acesso das funções internas (Jogador, Capitão, Equipa Técnica e Admin).
- Mantém a sequência Privacidade → Push → guia de primeiro acesso.
- A minha conta reforça que o n.º de sócio nunca atribui automaticamente a função Sócio.

## Produção
- Identificação visual alterada de Release Candidate para Final Candidate.
- Service worker/cache atualizado para V3.15.
- Mantidos os mecanismos de atualização PWA, Web Push, recuperação de password e proteção de permissões da V3.14.

## Pendente para 1.0
- SMTP final do clube.
- Aplicar/testar os templates de email preparados.
- Teste final de conta nova + recuperação de password.
