## Plan: Implementacao Jekyll para Associacao

Implementar um website Jekyll em GitHub Pages com conteudo institucional, subpaginas, posts com historico publico e data original preservada, tabelas estaticas e atualizaveis, performance alta e responsividade mobile-first.

### Objetivo

Criar um site simples, rapido e responsivo para uma associacao, com:

- Subpaginas institucionais com arquitetura definida.
- Posts com historico de revisoes, mantendo data original.
- Paginas com tabelas estaticas e tabelas com dados atualizaveis.
- Deploy automatico no GitHub Pages.
- Aspeto clean com identidade visual branca/vermelha alinhada com HL7 Portugal.

### Direcao visual obrigatoria

1. Paleta principal
   - Fundo base branco.
   - Cor primaria vermelho institucional HL7 Portugal.
   - Tons de cinza neutros para texto, linhas e superficies secundarias.
2. Hierarquia visual
   - Layout limpo, espacamento consistente e leitura prioritaria do conteudo.
   - Destaques e CTAs apenas em vermelho para manter foco.
3. Componentes
   - Header, menu, botoes, cards e tabelas com estilo minimalista.
   - Bordas subtis e contraste forte para acessibilidade.
4. Conteudo
   - Carrousel da Intro com visual leve, sem excesso de animacoes.
   - Noticias, Formacao e Recursos com grelha simples e escaneavel.
5. Consistencia
   - Definir variaveis de design no CSS (cores, espacamentos, tipografia, raios e sombras).
   - Aplicar o mesmo sistema visual em todas as paginas e subpaginas.

### Mapa de paginas obrigatorio

1. Intro
   - Hero com carrousel para inscricoes de socios e vantagens.
2. Anuidades
   - Tabela de quotas/anuidades por categoria de socio.
3. Direcao
   - Direcao atual e direcoes anteriores (historico).
   - Cada membro com foto, nome, cargo e link LinkedIn.
4. Vantagens e testemunhos
   - Lista de vantagens e testemunhos de socios.
5. Noticias
   - Listagem de posts/noticias e acesso a detalhe de cada post.
6. Formacao
   - Descricao das ofertas formativas.
7. Recursos
   - Subpagina Apresentacoes.
   - Subpagina Especificacoes tecnicas.
   - Subpagina Ferramentas.
   - Subpagina OID.
   - Subpagina Publicacoes de interoperabilidade.
8. Associacao
   - Pagina com links externos para documentos no Google Drive reservados a socios.

### Fase 0 - Bootstrap do projeto

1. Inicializar estrutura Jekyll.
2. Configurar build local e configuracao base de producao.
3. Criar estrutura de pastas:
   - `_layouts`
   - `_includes`
   - `_posts`
   - `_data`
   - `pages`
   - `assets`
   - `.github/workflows`

**Resultado esperado**: build local funcional e deploy inicial no GitHub Pages.

### Fase 1 - Navegacao e paginas institucionais

1. Criar layout `default` com header, menu e footer reutilizaveis.
2. Criar paginas base obrigatorias:
   - Intro com carrousel.
   - Anuidades.
   - Direcao (atual e anteriores) com cards de membros (foto, nome, cargo, LinkedIn).
   - Vantagens e testemunhos.
   - Formacao.
   - Associacao.
3. Criar pagina de Recursos e respetivas subpaginas:
   - Recursos > Apresentacoes.
   - Recursos > Especificacoes tecnicas.
   - Recursos > Ferramentas.
   - Recursos > OID.
   - Recursos > Publicacoes interoperabilidade.
4. Criar rota de Noticias para receber os posts.
5. Definir menu principal e submenu de Recursos.
6. Definir permalinks estaveis para evitar links quebrados no futuro.

**Dependencia**: Fase 0.

### Fase 2 - Sistema de posts com historico publico

1. Criar layout de post com metadados visiveis:
   - Data original
   - Ultima atualizacao
   - Historico de revisoes
2. Definir front matter obrigatorio:
   - `title`
   - `date` (data original, imutavel)
   - `last_modified_at`
   - `author`
   - `category`
   - `tags`
   - `revisions`
3. Criar pagina de historico por post com lista cronologica das versoes.
4. Criar listagem de noticias na homepage e pagina dedicada de Noticias (posts).

**Dependencia**: Fase 1.

### Fase 3 - Tabelas (estaticas + atualizaveis)

1. Padrao A (estatico): tabelas em Markdown/HTML para conteudo fixo (ex.: anuidades, direcoes anteriores).
2. Padrao B (reutilizavel): dados em `_data/*.yml` renderizados com Liquid.
3. Padrao C (atualizavel): workflow GitHub Actions para atualizar `_data` a partir de origem externa.
4. Aplicar progressive enhancement:
   - Com JS: ordenacao, filtro e paginacao.
   - Sem JS: tabela continua legivel e funcional.

**Dependencia**: Fases 1 e 2.

### Fase 3.1 - Estrutura de dados da Direcao

1. Definir dados da Direcao atual e anteriores em estrutura reutilizavel (ex.: `_data/direcao.yml`).
2. Campos obrigatorios por membro:
   - `nome`
   - `cargo`
   - `linkedin`
   - `foto`
   - `mandato` (ex.: 2024-2026)
3. Validar fallback visual quando foto ou LinkedIn estiver em falta (placeholder + texto).

**Dependencia**: Fase 1.

### Fase 4 - Performance

1. Configurar Sass comprimido.
2. Usar JS minimo necessario.
3. Otimizar imagens (`webp`, `srcset`, `loading=lazy`).
4. Inlinear CSS critico e adiar o nao critico quando fizer sentido.
5. Evitar loops Liquid pesados em paginas com muitos registos.
6. Garantir que o tema visual permanece leve (sem frameworks CSS pesados).

**Dependencia**: Fases 1 a 3.

### Fase 5 - Responsividade e acessibilidade

1. Aplicar abordagem mobile-first com breakpoints claros.
2. Garantir boa leitura de tabelas em ecras pequenos com scroll horizontal controlado.
3. Validar:
   - Contraste
   - Foco de teclado
   - Hierarquia de headings
   - Semantica de formularios
4. Validar consistencia da identidade branca/vermelha em mobile e desktop.

**Dependencia**: Fases 1 a 3.

### Fase 6 - Deploy, governanca e operacao

1. Configurar deploy automatico no GitHub Pages (branch de producao).
2. Configurar protecao de branch.
3. Adicionar template de Pull Request.
4. Definir convencao de commits para rastreabilidade de conteudo e revisoes.

**Dependencia**: Fases 2 a 5.

### Fase 7 - Validacao final e lancamento

1. Executar validacoes funcionais e responsivas.
2. Medir performance (Lighthouse/Core Web Vitals).
3. Corrigir links quebrados e regressao visual em mobile.
4. Publicar MVP.
5. Monitorizar correcao de dados de tabelas e estabilidade da navegacao.

**Dependencia**: Todas as fases anteriores.

## Ficheiros a criar na implementacao

- `_config.yml`
- `_layouts/default.html`
- `_layouts/page.html`
- `_layouts/post.html`
- `_includes/nav.html`
- `_includes/post-history.html`
- `_posts/` (conteudo noticioso)
- `_data/` (dados de tabelas)
- `pages/` (intro, anuidades, direcao, vantagens-testemunhos, noticias, formacao, associacao)
- `pages/recursos/` (apresentacoes, especificacoes-tecnicas, ferramentas, oid, publicacoes-interoperabilidade)
- `assets/css/main.scss`
- `assets/css/tokens.scss` (cores e regras de identidade HL7 Portugal)
- `assets/js/tables.js`
- `.github/workflows/data-refresh.yml`
- `.github/PULL_REQUEST_TEMPLATE.md`
- `README.md`

## Validacao obrigatoria

1. Build local Jekyll sem erros.
2. Deploy no GitHub Pages apos merge na branch principal.
3. Todos os posts com data original e historico de revisoes visivel.
4. Tabelas utilizaveis em desktop e mobile, com e sem JS.
5. Links internos sem erros.
6. Performance alta em mobile e desktop.
7. Acessibilidade basica validada (teclado, contraste, headings).
8. Menu e submenu de Recursos funcionais em mobile e desktop.
9. Pagina Associacao com links externos para Google Drive validados.
10. Identidade visual branca/vermelha aplicada de forma consistente em todo o site.
11. Pagina Direcao com foto, nome, cargo e LinkedIn exibidos corretamente em todos os membros.

## Decisoes de escopo

Incluido no MVP:

- Site em PT.
- Posts com historico publico.
- Paginas obrigatorias definidas neste documento (incluindo Recursos com 5 subpaginas).
- Tabelas mistas.
- Deploy em GitHub Pages.

Fora do MVP:

- CMS visual para utilizadores nao tecnicos.
- Backend proprio.
- Multilingue no arranque.

## Consideracoes futuras

1. Definir frequencia do workflow de dados (diario ou semanal).
2. Definir se versoes antigas de posts devem ser indexadas por motores de busca.
3. Reavaliar stack se houver crescimento forte de conteudo e tabelas.
