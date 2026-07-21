---
layout: page
title: Anuidades
permalink: /pages/anuidades/
intro: Valores de quota anual por tipo de participação na associação.
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
