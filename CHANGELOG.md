# V1.0 — Produção

Versão de produção baseada na V3.16 funcionalmente aprovada.

## Lançamento
- Identificação visual e diagnóstico atualizados para V1.0.
- SMTP próprio do ADC Figueiras configurado no Supabase Auth.
- Templates de email personalizados aplicados.
- Testados com sucesso os fluxos de recuperação de palavra-passe e criação/confirmação de conta nova.
- Removida a permissão `EXECUTE` do role `anon` nas 9 RPCs públicas `SECURITY DEFINER`; o acesso autenticado necessário à aplicação foi mantido com validações internas de permissões.
- Snapshot de release guardado antes da publicação.
- Service worker/cache atualizado para V1.0.

## Funcionalidades
- Sem alterações funcionais relativamente à V3.16 aprovada.
- Mantidos Match Center, pesagens de jogo, auto-golo, treinos, multas, resultados/classificação, acessos, notificações Push e restantes funcionalidades existentes.

---

# V3.16 — Pesagens de jogo + Auto-golo

Base: V3.15 Final Candidate.

## Match Center
- Nova área de pesagens para convocados: peso pré-jogo, pós-jogo e diferença automática.
- Indicador “Pesagens X/Y registadas”.
- Pesagens de jogo entram na mesma evolução cronológica das pesagens de treino, sem separar visualmente a origem na ficha do jogador.
- Nova opção “Auto-golo adversário” ao adicionar um golo.
- Auto-golo aparece na cronologia, não é atribuído a nenhum jogador e não entra nas estatísticas individuais.

## Supabase
- Incluído `SUPABASE_MIGRATION_V3_16.sql`.
- Nova tabela `match_weigh_ins` com RLS para utilizadores internos.
- `match_events` passa a suportar `is_own_goal` e jogador nulo quando se trata de auto-golo.

## Compatibilidade
- Mantida a chave de localStorage da V3.15.
- Estado antigo é normalizado sem reset de dados.
- Service worker/cache atualizado para esta build.

---

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
