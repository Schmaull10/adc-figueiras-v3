# ADC Figueiras V3.12

Build baseada na V3.11.

## Novidade principal
Recuperação de palavra-passe por email através do Supabase Auth.

## Configuração necessária no Supabase
Antes de testar, configure em Authentication > URL Configuration:
- Site URL: URL HTTPS exato da aplicação GitHub Pages.
- Redirect URLs: adicionar o mesmo URL exato.

Em Authentication > Sign In / Providers > Email, recomenda-se manter Confirm Email ativo.

Não é necessária qualquer migração SQL para esta versão.
