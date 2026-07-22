---
layout: page
title: Documentos públicos
permalink: /pages/documentos-publicos/
description: >-
  Documentos públicos do HL7 Portugal: atas de assembleia, relatórios de
  atividade, estatutos e demais materiais produzidos pela associação.
intro: Documentos e materiais públicos produzidos ao longo da atividade da associação.
---

<p class="muted">Esta página agrega documentos públicos e vai sendo atualizada conforme forem publicados novos materiais.</p>

{% for secao in site.data.documentos_publicos.secoes %}
  <section style="margin-top: 2rem;">
    <h2>{{ secao.titulo }}</h2>
    <p class="muted">{{ secao.descricao }}</p>
    <div class="table-wrap">
      <table aria-label="{{ secao.titulo }}">
        <thead>
          <tr>
            <th>Título</th>
            <th>Data</th>
            <th>Tipo</th>
            <th>Ligação</th>
          </tr>
        </thead>
        <tbody>
          {% for doc in secao.documentos %}
            <tr>
              <td>{{ doc.titulo }}</td>
              <td>{{ doc.data }}</td>
              <td>{{ doc.tipo }}</td>
              <td>
                {% if doc.link contains '://' %}
                  <a href="{{ doc.link }}" target="_blank" rel="noopener noreferrer">Abrir</a>
                {% else %}
                  <a href="{{ doc.link | relative_url }}" target="_blank" rel="noopener noreferrer">Abrir</a>
                {% endif %}
              </td>
            </tr>
          {% endfor %}
        </tbody>
      </table>
    </div>
  </section>
{% endfor %}
