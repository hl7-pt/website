---
layout: page
title: Noticias
permalink: /pages/noticias/
intro: Novidades, eventos e atualizacoes da associacao.
---

<div class="card-grid">
  {% for post in site.posts %}
    <article class="card">
      <h2><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
      <p class="muted">{{ post.date | date: '%d-%m-%Y' }}</p>
      {% if post.excerpt %}
        <p>{{ post.excerpt | strip_html | truncate: 170 }}</p>
      {% endif %}
      <a href="{{ post.url | relative_url }}">Ler noticia</a>
    </article>
  {% endfor %}
</div>
