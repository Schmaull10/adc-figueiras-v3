# ADC Figueiras V3.16 — Pesagens de jogo + Auto-golo

Esta build parte diretamente da **V3.15 Final Candidate**. Não limpa nem troca a chave de armazenamento local.

## Antes de publicar
1. Faz um backup na app atual: **Definições → Exportar backup JSON**.
2. No Supabase, abre o **SQL Editor**.
3. Executa o ficheiro `SUPABASE_MIGRATION_V3_16.sql` completo.
4. Só depois substitui os ficheiros do GitHub Pages pelos desta pasta.
5. Aguarda a publicação e faz `Ctrl+F5`.
6. Em Definições confirma a versão `v3.16-matchday-weights-own-goal`.

## Teste recomendado
- Abrir um jogo com convocados.
- Match Center → **Gerir pesagens** → preencher pré/pós de 1 ou 2 jogadores → guardar.
- Abrir a ficha desses jogadores e confirmar que os novos valores entram na mesma evolução de peso.
- Match Center → **+ Acontecimento** → Golo → ativar **Auto-golo adversário** → guardar.
- Confirmar que aparece na cronologia sem nome de jogador e que nenhum jogador recebe esse golo nas Estatísticas.

## Segurança
A build continua a usar apenas a Publishable Key no frontend. Não colocar `service_role` nem outras chaves secretas nos ficheiros da app.
