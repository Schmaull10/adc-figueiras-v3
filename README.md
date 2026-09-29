# ADC Figueiras V3.13

Esta build acrescenta a área **A minha conta** e o fluxo seguro de pedido de número de sócio.

Antes de publicar a build, executar no Supabase o SQL fornecido na conversa para criar as RPCs:
- `public.update_my_profile`
- `public.request_member_number`

O fluxo de sócio é deliberadamente separado da validação:
1. o utilizador indica o número;
2. o perfil passa para `member_status = 'pending'`;
3. o Admin valida em **Pessoas e acessos**;
4. apenas a ação de Admin atribui o acesso de Sócio.

A configuração de SMTP e dos templates de email continua a ser feita no Dashboard do Supabase e não requer segredos no GitHub.
