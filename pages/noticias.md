---
layout: page
title: Notícias
permalink: /pages/noticias/
description: >-
  Últimas notícias, eventos, webinars e atualizações do HL7 Portugal:
  novidades sobre interoperabilidade em saúde e padrões HL7 e FHIR.
intro: Novidades, eventos e atualizações da associação.
---

<div class="card-grid">
  {% for post in site.posts %}
    <article class="card">
      {% if post.image %}
        <img class="post-list-thumb" src="{{ post.image | relative_url }}" alt="Imagem de {{ post.title }}" loading="lazy">
      {% endif %}
      <h2><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
      <p class="muted">{{ post.date | date: '%d-%m-%Y' }}</p>
      {% if post.excerpt %}
        <p>{{ post.excerpt | strip_html | truncate: 170 }}</p>
      {% endif %}
      <a href="{{ post.url | relative_url }}">Ler notícia</a>
    </article>
  {% endfor %}
</div>
