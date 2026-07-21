---
layout: default
title: Intro
---

<section class="container hero">
  <h1>HL7 Portugal</h1>
  <p>Comunidade para promover interoperabilidade em saúde, com foco em standards HL7 e implementação prática.</p>
  <div class="carousel" aria-label="Destaques de inscrição e vantagens">
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
      <p>Consulta quotas por categoria de sócio.</p>
      <a href="{{ '/pages/anuidades/' | relative_url }}">Ver anuidades</a>
    </article>
    <article class="card">
      <h3>Direção</h3>
      <p>Conhece a equipa atual e histórico de mandatos.</p>
      <a href="{{ '/pages/direcao/' | relative_url }}">Ver direção</a>
    </article>
    <article class="card">
      <h3>Notícias</h3>
      <p>Acompanha novidades e atualizações.</p>
      <a href="{{ '/pages/noticias/' | relative_url }}">Ler notícias</a>
    </article>
    <article class="card">
      <h3>Recursos</h3>
      <p>Encontra apresentações, especificações e ferramentas.</p>
      <a href="{{ '/pages/recursos/' | relative_url }}">Abrir recursos</a>
    </article>
  </div>
</section>
