# ADC Figueiras V3.4 — Match Center online

- Convocatórias dos jogos do ADC Figueiras passam a ser guardadas em `match_players` no Supabase.
- Estado de utilização (`Jogou`), 5 inicial e capitão ficam sincronizados entre dispositivos.
- Golos, assistências e cartões amarelos/vermelhos passam a ser guardados em `match_events`.
- Acontecimentos podem ser eliminados e a eliminação é refletida no Supabase.
- Ao adicionar golo/cartão, o jogador fica automaticamente marcado como convocado e utilizado.
- O campo Assistência só aparece para golos.
- Minuto e jogador são obrigatórios nos acontecimentos online.
- O intervalo do campeonato continua automático aos 25 minutos e não é guardado como acontecimento eliminável.
- Nova secção em Definições: `Match Center online`, com contadores e opção de migrar dados locais existentes.
- Estatísticas continuam a ser calculadas pela interface, agora com dados do Match Center carregados do Supabase.

Não são necessárias alterações ao esquema da base de dados: esta versão usa as tabelas `match_players` e `match_events` criadas no Bloco 4.

## V3.5 — Treinos, presenças e pesagens online
- Treinos da época ativa passam a carregar do Supabase.
- Criação, edição e eliminação de treinos fica sincronizada online.
- Presenças e pesagens pré/pós-treino ficam no Supabase.
- Migração dos treinos locais existentes através de Definições.
- Mantém o automatismo de multa por atraso através do trigger da base de dados.
- Inclui migração SQL para suportar o estado de presença `injured` (Lesionado).
