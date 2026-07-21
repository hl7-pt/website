# HL7 Portugal - Website

Website em Jekyll com foco em performance, responsividade e identidade branca/vermelha.

## Requisitos

- Ruby 3.1+ (ou compativel com Jekyll 4.4)
- Bundler

## Arranque local

1. Instalar dependencias:
   bundle install
2. Arrancar servidor local:
   bundle exec jekyll serve
3. Abrir:
   <http://127.0.0.1:4000>

## Estrutura principal

- `index.md`: pagina Intro com carrousel
- `pages/`: paginas institucionais
- `pages/recursos/`: subpaginas de recursos
- `_posts/`: noticias
- `_data/`: dados reutilizaveis (anuidades, direcao, carrousel)

## Historico de posts

Cada post deve ter:

- `date` como data original
- `last_modified_at` para ultima alteracao
- `revisions` com versoes publicas

## Deploy

Hospedagem prevista em GitHub Pages.
