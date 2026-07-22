---
layout: page
title: Direção
permalink: /pages/direcao/
description: >-
  Conheça a composição atual e histórica da Direção do HL7 Portugal: membros
  da Direção, Conselho Fiscal e Mesa da Assembleia Geral.
intro: "Composição da direção em três versões: nova, antiga e sample menor."
---

<section>
  <h2>{{ site.data.direcao.nova.titulo }}</h2>
  <p class="muted">{{ site.data.direcao.nova.origem }}</p>

  <h3>Direção</h3>
  <div class="member-grid">
    {% for membro in site.data.direcao.nova.direcao %}
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

  <h3 style="margin-top: 2rem;">Conselho Fiscal</h3>
  <div class="member-grid">
    {% for membro in site.data.direcao.nova.conselho_fiscal %}
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

  <h3 style="margin-top: 2rem;">Mesa da Assembleia Geral</h3>
  <div class="member-grid">
    {% for membro in site.data.direcao.nova.mesa_assembleia_geral %}
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
  <h2>{{ site.data.direcao.antiga.titulo }}</h2>
  <p class="muted">{{ site.data.direcao.antiga.origem }}</p>
  <ul>
    {% for membro in site.data.direcao.antiga.membros %}
      <li>
        <strong>{{ membro.nome }}</strong> - {{ membro.cargo }}
        {% if membro.linkedin %}
          (<a href="{{ membro.linkedin }}" target="_blank" rel="noopener noreferrer">LinkedIn</a>)
        {% else %}
          <span class="muted">(LinkedIn por adicionar)</span>
        {% endif %}
      </li>
    {% endfor %}
  </ul>
</section>

<section style="margin-top: 2rem;">
  <h2>{{ site.data.direcao.sample_menor.titulo }}</h2>
  <p class="muted">{{ site.data.direcao.sample_menor.origem }}</p>
  <ul>
    {% for membro in site.data.direcao.sample_menor.membros %}
      <li>
        <strong>{{ membro.nome }}</strong> - {{ membro.cargo }}
        {% if membro.linkedin %}
          (<a href="{{ membro.linkedin }}" target="_blank" rel="noopener noreferrer">LinkedIn</a>)
        {% else %}
          <span class="muted">(LinkedIn por adicionar)</span>
        {% endif %}
      </li>
    {% endfor %}
  </ul>
</section>
