# V3.3.1 hotfix

- Corrigido o botão **Criar calendário online**, que não tinha o evento de clique associado.
- Corrigido o botão **Atualizar jogos online**.
- Atualizada a versão do cache do service worker.

# Changelog

## V3.3.0 — Calendário e resultados online
- Adicionada sincronização da tabela `matches` com Supabase.
- Migração inicial do calendário completo da Série 2.
- Migração de resultados já introduzidos localmente.
- Migração de jogos do ADC Figueiras de Taça/amigáveis já existentes.
- Resultados e classificação passam a ler os jogos online depois da migração.
- Alterações de resultados de outros clubes são gravadas no Supabase.
- Alterações de resultado/data/hora/local dos jogos do ADC Figueiras são gravadas no Supabase.
- Novos jogos adicionais passam a ser criados online após a migração.
- Jogos oficiais do calendário ficam protegidos contra eliminação no Match Center.
- Adicionado diagnóstico/atualização do calendário online em Definições.

## V3.2.0
- Plantel online via Supabase.
