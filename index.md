---
layout: default
title: Intro
---

<section class="container hero">
  <h1>HL7 Portugal</h1>
  <p>Comunidade para promover interoperabilidade em saude, com foco em standards HL7 e implementacao pratica.</p>
  <div class="carousel" aria-label="Destaques de inscricao e vantagens">
    {% for item in site.data.carousel %}
      <article class="carousel-slide{% if forloop.first %} active{% endif %}">
        <h2>{{ item.titulo }}</h2>
        <p>{{ item.texto }}</p>
        <a class="btn" href="{{ item.cta_link | relative_url }}">{{ item.cta_texto }}</a>
      </article>
    {% endfor %}
  </div>
</section>

<section class="container" style="margin-top: 2rem;">
  <h2>Atalhos</h2>
  <div class="card-grid">
    <article class="card">
      <h3>Anuidades</h3>
      <p>Consulta quotas por categoria de socio.</p>
      <a href="{{ '/pages/anuidades/' | relative_url }}">Ver anuidades</a>
    </article>
    <article class="card">
      <h3>Direcao</h3>
      <p>Conhece a equipa atual e historico de mandatos.</p>
      <a href="{{ '/pages/direcao/' | relative_url }}">Ver direcao</a>
    </article>
    <article class="card">
      <h3>Noticias</h3>
      <p>Acompanha novidades e atualizacoes.</p>
      <a href="{{ '/pages/noticias/' | relative_url }}">Ler noticias</a>
    </article>
    <article class="card">
      <h3>Recursos</h3>
      <p>Encontra apresentacoes, especificacoes e ferramentas.</p>
      <a href="{{ '/pages/recursos/' | relative_url }}">Abrir recursos</a>
    </article>
  </div>
</section>
