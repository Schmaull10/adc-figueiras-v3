# ADC Figueiras V1.1 — Produção

Versão de produção baseada na V3.16 aprovada. Não limpa nem altera a chave de armazenamento local e não requer nova migração de base de dados.

## Estado validado antes do lançamento
- Match Center, convocatórias, 5 inicial, acontecimentos, auto-golo e pesagens de jogo validados.
- Treinos, presenças, pesagens e multas online validados.
- Calendário, resultados manuais e classificação online validados.
- Contas, funções e acessos pré-atribuídos validados.
- Web Push e Cron de notificações ativos.
- SMTP próprio configurado e templates de email aplicados.
- Recuperação de palavra-passe e criação/confirmação de conta nova testadas com sucesso.
- Acesso anónimo às RPCs públicas SECURITY DEFINER removido; utilizadores autenticados mantêm o acesso necessário, sujeito às validações internas de permissões.

## Publicação no GitHub Pages
1. Mantém guardado o snapshot de release que acabaste de exportar.
2. Substitui os ficheiros da versão publicada pelos ficheiros desta pasta.
3. Faz commit no GitHub.
4. Aguarda a publicação do GitHub Pages.
5. Abre a aplicação e faz `Ctrl+F5` no primeiro acesso.
6. Em **Definições**, confirma que aparece `V1.1 · Produção` e, em Diagnóstico, `v1.1`.
7. Confirma rapidamente login, Início e abertura de um jogo no Match Center.

## Compatibilidade
- Mantida a chave de localStorage usada nas versões anteriores.
- Mantido o mesmo projeto Supabase e os mesmos dados.
- Mantida a Publishable Key no frontend.
- O ficheiro `SUPABASE_MIGRATION_V3_16.sql` é mantido apenas como referência histórica da migração que já foi aplicada. Não o voltes a executar para publicar a V1.1.

## Segurança
Nunca colocar `service_role`, palavras-passe SMTP ou outras chaves secretas nos ficheiros da aplicação ou no repositório público.

## Calendário
- Ao tocar num treino ou jogo, a app mostra a data, a hora e o local do evento.
- Quando aplicável e permitido pela função do utilizador, o detalhe mantém acesso ao treino, Match Center ou edição do jogo.
