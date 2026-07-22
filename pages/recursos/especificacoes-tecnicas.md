---
layout: page
title: Especificações Técnicas
permalink: /pages/recursos/especificacoes-tecnicas/
description: >-
  Guias de implementação HL7, especificações técnicas e processo de publicação
  de normas pelo HL7 Portugal.
intro: Guias de implementação e processo de publicação técnica HL7 Portugal.
---

<article class="card">
  <h2>Guias de Implementação (IGs) em desenvolvimento</h2>
  <p>Os guias de implementação são desenvolvidos pelas equipas de trabalho com recurso ao GitHub. Com o sistema de deploy, cada modificação gera um exemplo do site do IG para validação e acompanhamento do estado atual.</p>

  <div class="table-wrap">
    <table aria-label="Tabela de guias de implementação">
      <thead>
        <tr>
          <th>Especificação</th>
          <th>Repositório</th>
          <th>Site do IG</th>
          <th>Notas</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>Reações adversas e alergias</td>
          <td><a href="https://github.com/hl7-pt/adr-ig" target="_blank" rel="noopener noreferrer">github.com/hl7-pt/adr-ig</a></td>
          <td><a href="https://hl7-pt.github.io/adr-ig/" target="_blank" rel="noopener noreferrer">hl7-pt.github.io/adr-ig</a></td>
          <td>Especificação para notificar alergias/intolerâncias e potenciais reações adversas a medicamentos</td>
        </tr>
        <tr>
          <td>Notícia Nascimento</td>
          <td><a href="https://github.com/hl7-pt/obs-neonat-ig" target="_blank" rel="noopener noreferrer">github.com/hl7-pt/obs-neonat-ig</a></td>
          <td><a href="https://hl7-pt.github.io/obs-neonat-ig/" target="_blank" rel="noopener noreferrer">hl7-pt.github.io/obs-neonat-ig</a></td>
          <td>Notificação de uma notícia de nascimento</td>
        </tr>
        <tr>
          <td>Saúde Comunitária [P5]</td>
          <td><a href="https://github.com/hl7-pt/community-health-ig" target="_blank" rel="noopener noreferrer">github.com/hl7-pt/community-health-ig</a></td>
          <td><a href="https://hl7-pt.github.io/community-health-ig/" target="_blank" rel="noopener noreferrer">hl7-pt.github.io/community-health-ig</a></td>
          <td></td>
        </tr>
        <tr>
          <td>Gestão de doenças respiratórias [FMUP]</td>
          <td><a href="https://github.com/hl7-pt/resp-ig" target="_blank" rel="noopener noreferrer">github.com/hl7-pt/resp-ig</a></td>
          <td><a href="https://hl7-pt.github.io/resp-ig/" target="_blank" rel="noopener noreferrer">hl7-pt.github.io/resp-ig</a></td>
          <td></td>
        </tr>
        <tr>
          <td>Portuguese core</td>
          <td><a href="https://github.com/hl7-pt/core" target="_blank" rel="noopener noreferrer">github.com/hl7-pt/core</a></td>
          <td><a href="https://hl7-pt.github.io/core/" target="_blank" rel="noopener noreferrer">hl7-pt.github.io/core</a></td>
          <td></td>
        </tr>
        <tr>
          <td>ET RSE em formato IG</td>
          <td><a href="https://github.com/hl7-pt/draft-et-rse" target="_blank" rel="noopener noreferrer">github.com/hl7-pt/draft-et-rse</a></td>
          <td></td>
          <td></td>
        </tr>
        <tr>
          <td>PEM-H em formato IG</td>
          <td><a href="https://github.com/hl7-pt/pem-h" target="_blank" rel="noopener noreferrer">github.com/hl7-pt/pem-h</a></td>
          <td><a href="https://hl7-pt.github.io/pem-h/" target="_blank" rel="noopener noreferrer">hl7-pt.github.io/pem-h</a></td>
          <td></td>
        </tr>
        <tr>
          <td>Reabilitação Pulmonar [FMUP]</td>
          <td><a href="https://github.com/hl7-pt/pulmonar-rehab" target="_blank" rel="noopener noreferrer">github.com/hl7-pt/pulmonar-rehab</a></td>
          <td><a href="https://hl7-pt.github.io/pulmonar-rehab/" target="_blank" rel="noopener noreferrer">hl7-pt.github.io/pulmonar-rehab</a></td>
          <td></td>
        </tr>
        <tr>
          <td>Visita do Utente [HLTSYS]</td>
          <td><a href="https://github.com/hl7-pt/workflow-ep-ig" target="_blank" rel="noopener noreferrer">github.com/hl7-pt/workflow-ep-ig</a></td>
          <td><a href="https://hl7-pt.github.io/workflow-ep-ig/" target="_blank" rel="noopener noreferrer">hl7-pt.github.io/workflow-ep-ig</a></td>
          <td>Orientações para a implementação do Processo de Episódio do Utente</td>
        </tr>
        <tr>
          <td>Terminologias</td>
          <td><a href="https://github.com/hl7-pt/terminologias" target="_blank" rel="noopener noreferrer">github.com/hl7-pt/terminologias</a></td>
          <td><a href="https://hl7-pt.github.io/terminologias/" target="_blank" rel="noopener noreferrer">hl7-pt.github.io/terminologias</a></td>
          <td>Centro de terminologias ecossistemas português</td>
        </tr>
      </tbody>
    </table>
  </div>
</article>

<article class="card" style="margin-top: 2rem;">
  <h2>Procedimento para publicação de especificações técnicas</h2>
  <p>O HL7 Portugal tem dois âmbitos na criação de especificações: de projeto e nacionais.</p>

  <p><strong>1. Âmbito de Projeto:</strong> especificações técnicas criadas num contexto específico, geralmente preconizadas por uma entidade terceira. O HL7 Portugal pode rever a especificação e apoiar a sua divulgação.</p>
  <p><strong>2. Âmbito Nacional:</strong> especificações criadas dentro do HL7 Portugal e promovidas pela associação, com objetivo de atender necessidades nacionais.</p>

  <h3>Fluxo de aprovação</h3>
  <ol>
    <li>Qualquer membro da HL7 Portugal pode propor um projeto para desenvolver uma especificação.</li>
    <li>A proposta é submetida ao Comité Técnico, que pode aprovar, rejeitar ou solicitar informação adicional.</li>
    <li>O projeto é criado e documentado no GitHub da HL7 Portugal.</li>
    <li>Após revisão, os membros votam a favor, contra (com comentários) ou abstenção.</li>
    <li>Se aprovada, a especificação é publicada no repositório de publicações da HL7 Portugal.</li>
  </ol>
</article>
<img src="{{ 'assets/images/wf-fhir-process.png' | relative_url }}" alt="Descrição da imagem" loading="lazy">
