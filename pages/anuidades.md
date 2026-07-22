---
layout: page
title: Anuidades
permalink: /pages/anuidades/
description: >-
  Consulte os valores de quota anual por tipo de membro do HL7 Portugal:
  individuais, instituições de saúde, empresas e organizações académicas.
intro: Valores de quota anual por tipo de participação na associação.
faq:
  - question: Onde vejo os valores de quota anual?
    answer: Os valores de quota anual estão na tabela desta página, organizados por tipo de membro e número de votos.
  - question: As quotas são apresentadas em euros?
    answer: Sim. Todos os valores de quota anual nesta página são apresentados em EUR.
  - question: Como inicio o processo de adesão?
    answer: Para iniciar a adesão, deve usar o link de inscrição indicado nesta página.
---

<div class="table-wrap">
  <table data-sortable="true" aria-label="Tabela de anuidades">
    <thead>
      <tr>
        <th data-sort="text">Tipo</th>
        <th data-sort="number">Votos</th>
        <th data-sort="number">Quota anual (EUR)</th>
      </tr>
    </thead>
    <tbody>
      {% for row in site.data.anuidades %}
        <tr>
          <td>{{ row.tipo }}</td>
          <td>{{ row.votos }}</td>
          <td>{{ row.quota_anual }}€</td>
        </tr>
      {% endfor %}
    </tbody>
  </table>
</div>

<p>Quem quiser inscrever-se como sócio deve seguir este <a href="#" aria-label="Link de inscrição de sócio">link de inscrição</a>. O URL final será atualizado assim que estiver disponível.</p>

<article class="card" style="margin-top: 1.5rem;">
  <h2>Perguntas frequentes</h2>

  <h3>Onde vejo os valores de quota anual?</h3>
  <p>Os valores de quota anual estão na tabela desta página, organizados por tipo de membro e número de votos.</p>

  <h3>As quotas são apresentadas em euros?</h3>
  <p>Sim. Todos os valores de quota anual nesta página são apresentados em EUR.</p>

  <h3>Como inicio o processo de adesão?</h3>
  <p>Para iniciar a adesão, deve usar o link de inscrição indicado nesta página.</p>
</article>
