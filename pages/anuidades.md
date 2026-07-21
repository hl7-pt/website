---
layout: page
title: Anuidades
permalink: /pages/anuidades/
intro: Valores de anuidades por categoria de socio.
---

<div class="table-wrap">
  <table data-sortable="true" aria-label="Tabela de anuidades">
    <thead>
      <tr>
        <th data-sort="text">Categoria</th>
        <th data-sort="number">Valor anual (EUR)</th>
        <th data-sort="text">Periodo</th>
        <th data-sort="text">Observacoes</th>
      </tr>
    </thead>
    <tbody>
      {% for row in site.data.anuidades %}
        <tr>
          <td>{{ row.categoria }}</td>
          <td>{{ row.valor_anual }}</td>
          <td>{{ row.periodo }}</td>
          <td>{{ row.observacoes }}</td>
        </tr>
      {% endfor %}
    </tbody>
  </table>
</div>
