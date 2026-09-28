# V3.2 — Plantel Supabase

- Migração guiada do plantel para o Supabase.
- Plantel passa a carregar jogadores, números, posições e disponibilidade do backend.
- Criar/editar jogador passa a guardar online após a migração.
- Botões de estado e diagnóstico em Definições.

# V3.1 — Referências Supabase

- Login real mantido.
- A app lê `app_settings`, épocas, competições, equipas e associações de competição diretamente do Supabase.
- IDs do backend são ligados em memória aos dados locais sem quebrar a V2/V3 de testes.
- Novo diagnóstico em Definições para confirmar época ativa, clube, competições e número de equipas online.
- Jogos, jogadores, treinos, pesagens e multas continuam locais nesta fase.

# V3.0 Auth Pilot

- Login real com Supabase (email + palavra-passe).
- Leitura do perfil e roles reais (`user_roles`).
- Confirmação da ligação através de `app_settings`.
- Botão Sair e sessão persistente.
- Admin pode continuar a pré-visualizar outras funções; restantes utilizadores só veem funções que possuem.
- Armazenamento local de desenvolvimento isolado da V2.10 para não mexer nos dados da versão estável.
- Nesta fase, apenas autenticação/permissões estão online; dados de jogos, treinos, pesagens e multas ainda permanecem locais até às próximas migrações.

# V2.10.0 — Ícones de navegação

- Novo conjunto de ícones desportivos no menu lateral.
- "Dashboard" apresentado como "Início".
- Ícones consistentes para Resultados, Classificação, Estatísticas, Plantel, Treinos, Pesagens, Match Center, Multas, Regras de multas, Épocas, Equipas/gestão e Definições.
- Mantida toda a lógica e estrutura de dados da V2.9.

# V2.9

## Resultados e Taça AF Porto
- Adicionada a competição **Taça AF Porto**.
- Na Taça são apresentados apenas os jogos do ADC Figueiras.
- Novo filtro em Resultados: **Todos os jogos / Campeonato / Taça AF Porto**.
- Campeonato mantém a coluna **Jornada**; Taça usa **Ronda**.
- Quando são mostradas as duas competições, aparecem em blocos separados na mesma página para preservar o cabeçalho correto.
- Botão **+ Jogo da Taça** na página Resultados.
- Os jogos da Taça não contam para a classificação.

## Match Center
- Ao selecionar cartão amarelo ou vermelho, o campo **Assistência** é ocultado automaticamente.
- A assistência é limpa ao guardar um cartão, evitando dados residuais.
- Acontecimentos manuais da cronologia podem agora ser eliminados diretamente.
- O intervalo automático dos jogos de campeonato continua protegido e não pode ser eliminado.

## Outros
- Em Jogos, encontros da Taça passam a mostrar **Ronda** em vez de Jornada.
- Mantida a mesma chave de armazenamento V2 para preservar os dados existentes.
