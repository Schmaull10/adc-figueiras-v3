# V3.8.1 — Correção da área pública

- Corrige `permission denied for table player_availability` ao continuar sem conta.
- A disponibilidade dos jogadores continua privada e só é carregada para Jogador, Capitão, Equipa Técnica e Admin.
- Utilizadores públicos, registados sem função interna e Sócios deixam de consultar `player_availability`.
- A ficha pública do jogador já não mostra um estado de disponibilidade inventado.
- Atualiza a cache PWA para forçar a nova versão.
