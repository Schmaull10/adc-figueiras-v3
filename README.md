# ADC Figueiras V3.15 — Final Candidate

Esta é a última build candidata antes da ADC Figueiras 1.0.

## Ordem recomendada
1. Executar a migração SQL V3.15 fornecida na conversa.
2. Publicar todos os ficheiros desta pasta no GitHub Pages.
3. Confirmar em Definições → Diagnóstico: `v3.15-final-candidate`.
4. Em Definições, executar `Auditoria final`.
5. Usar `Limpar notificações de teste`.
6. Exportar `Snapshot de release` e guardar o JSON num local seguro.
7. Configurar já os templates de email no Supabase; isto não exige SMTP próprio.
8. Quando existir acesso ao email final do clube, configurar SMTP.
9. Criar uma conta nova do zero, confirmar email e testar recuperação de password.
10. Se tudo passar, publicar a versão 1.0.

## Snapshot de release
O snapshot exportado pela app inclui dados funcionais/configuração do backend e o estado local da aplicação. Não inclui passwords, secrets do Supabase, chaves VAPID privadas nem credenciais SMTP. É um snapshot funcional de release, não substitui um backup integral administrado da base de dados.

## Limpeza de testes
A rotina V3.15 elimina apenas notificações com títulos/corpos de teste conhecidos usados durante a validação do Push Automático. Não elimina subscrições push nem notificações normais.

## SMTP
O SMTP continua deliberadamente pendente. Os templates podem ser preparados antes de existir acesso a `adcf2015@gmail.com`.
