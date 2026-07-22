---
layout: default
title: Início
description: >-
  HL7 Portugal é a associação que apoia a comunidade de interoperabilidade em
  saúde em Portugal, promovendo os padrões HL7 e FHIR através de formação,
  eventos e recursos técnicos.
---

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Organization",
  "name": "HL7 Portugal",
  "url": "https://hl7-pt.github.io",
  "logo": "https://hl7-pt.github.io/assets/images/og-default.svg",
  "description": "Associação portuguesa dedicada à interoperabilidade em saúde com padrões abertos HL7 e FHIR.",
  "email": "geral@hl7.pt",
  "sameAs": [
    "https://www.linkedin.com/company/hl7-portugal"
  ]
}
</script>

<section class="container hero">
  <h1>HL7 Portugal</h1>
  <p>Apoiar a comunidade HL7 em prol da saúde.</p>
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
  <div class="cta-grid">
    {% for cta in site.data.index_ctas %}
      <article class="card">
        <h2>{{ cta.titulo }}</h2>
        <p>{{ cta.texto }}</p>
        {% if cta.externo %}
          <a class="btn" href="{{ cta.link }}" target="_blank" rel="noopener noreferrer" aria-label="{{ cta.botao }}">{{ cta.botao }}</a>
        {% else %}
          <a class="btn" href="{{ cta.link | relative_url }}" aria-label="{{ cta.botao }}">{{ cta.botao }}</a>
        {% endif %}
      </article>
    {% endfor %}
  </div>
</section>

<section class="container" style="margin-top: 2rem;">
  <h2>O que fazemos</h2>
  <div class="card-grid card-grid-4">
    <article class="card">
      <h3>Informação</h3>
      <p>Disponibilizar informação acerca do HL7 de forma acessível e inteligível para a comunidade.</p>
    </article>
    <article class="card">
      <h3>Promoção</h3>
      <p>Participação em eventos, palestras e workshops para promoção da norma HL7.</p>
    </article>
    <article class="card">
      <h3>Formação</h3>
      <p>Promover e apoiar a realização de cursos, sessões e workshops de formação.</p>
    </article>
    <article class="card">
      <h3>Webinars</h3>
      <p>Eventos periódicos com temáticas relevantes para toda a comunidade.</p>
    </article>
  </div>
</section>

<section class="container" style="margin-top: 2rem;">
  <h2>Entidades associadas que trabalham connosco</h2>
  
  <div class="logo-grid" aria-label="Logotipos de sócios">
    {% for socio in site.data.socios %}
      <article class="logo-card">
        {% assign logo_path = '/assets/images/socios/' | append: socio.ficheiro %}
        {% if socio.site %}
          <a href="{{ socio.site }}" target="_blank" rel="noopener noreferrer" aria-label="{{ socio.nome }}">
            <img class="logo-image" src="{{ logo_path | relative_url }}" alt="Logotipo {{ socio.nome }}" loading="lazy" onerror="this.src='{{ '/assets/images/member-placeholder.svg' | relative_url }}'; this.classList.add('logo-fallback');">
          </a>
        {% else %}
          <img class="logo-image" src="{{ logo_path | relative_url }}" alt="Logotipo {{ socio.nome }}" loading="lazy" onerror="this.src='{{ '/assets/images/member-placeholder.svg' | relative_url }}'; this.classList.add('logo-fallback');">
        {% endif %}
        <p>{{ socio.nome }}</p>
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
