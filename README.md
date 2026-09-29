# ADC Figueiras V3.14 — Release Candidate

Build consolidada de preparação para lançamento, baseada na V3.13.

## Antes de publicar
1. Executar a migração SQL V3.14 fornecida na conversa (`privacy_acknowledgements` + reforço RLS de multas/regras).
2. Fazer upload de todos os ficheiros desta pasta para o repositório GitHub Pages da V3.
3. Confirmar em Definições → Diagnóstico da aplicação: `v3.14-release-candidate`.

## O que esta RC acrescenta
- área Privacidade, pública e acessível a qualquer utilizador;
- registo online da tomada de conhecimento da política de privacidade;
- onboarding de privacidade antes do convite de push;
- checklist de primeiro acesso em A minha conta;
- checklist consolidada de Release Candidate nas Definições;
- matriz de permissões visível ao Admin;
- correção de permissões do Capitão: gere multas individuais, mas não regras de multas;
- reforço RLS das multas: Jogador vê apenas as próprias; Capitão/Equipa Técnica/Admin consultam e gerem as da equipa;
- passwords novas com mínimo de 8 caracteres no frontend;
- linguagem de produção e limpeza de referências antigas a “testes/migração”;
- cache/service worker atualizado para a RC;
- atualização do nome instalado da PWA para “ADC Figueiras”.

## Ainda pendente antes do release
- configurar SMTP próprio e personalizar os emails de autenticação;
- executar um teste final de ponta a ponta com uma conta criada do zero.

Não é necessário alterar as Edge Functions de push nesta build.
