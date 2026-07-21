---
layout: page
title: Direção
permalink: /pages/direcao/
intro: Direção atual e mandatos anteriores.
---

<section>
  <h2>Direção atual ({{ site.data.direcao.atual.mandato }})</h2>
  <div class="member-grid">
    {% for membro in site.data.direcao.atual.membros %}
      <article class="member-card">
        <img class="member-photo" src="{{ membro.foto | default: '/assets/images/member-placeholder.svg' | relative_url }}" alt="Foto de {{ membro.nome }}" loading="lazy">
        <h3>{{ membro.nome }}</h3>
        <p><strong>Cargo:</strong> {{ membro.cargo }}</p>
        {% if membro.linkedin %}
          <p><a href="{{ membro.linkedin }}" target="_blank" rel="noopener noreferrer">LinkedIn</a></p>
        {% else %}
          <p class="muted">LinkedIn indisponível</p>
        {% endif %}
      </article>
    {% endfor %}
  </div>
</section>

<section style="margin-top: 2rem;">
  <h2>Direções anteriores</h2>
  {% for bloco in site.data.direcao.anteriores %}
    <article class="card">
      <h3>Mandato {{ bloco.mandato }}</h3>
      <ul>
        {% for membro in bloco.membros %}
          <li>
            {{ membro.nome }} - {{ membro.cargo }}
            {% if membro.linkedin %}
              (<a href="{{ membro.linkedin }}" target="_blank" rel="noopener noreferrer">LinkedIn</a>)
            {% endif %}
          </li>
        {% endfor %}
      </ul>
    </article>
  {% endfor %}
</section>
