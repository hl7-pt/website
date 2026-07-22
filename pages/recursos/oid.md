---
layout: page
title: OID
permalink: /pages/recursos/oid/
description: >-
  Registos OID (Object Identifiers) relevantes para Portugal: âmbito,
  estrutura hierárquica e processo de atribuição pelo HL7 Portugal.
intro: Resumo dos objetivos dos OID e registos relevantes para Portugal.
---

<article class="card">
  <h2>O que é um OID</h2>
  <p>Object identifiers (OID) são um mecanismo de identificação normalizado pelo International Telecommunications Union (ITU) e pelo ISO/IEC para designar qualquer objeto, conceito ou "coisa", com um nome global, persistente e não ambíguo.</p>
  <p>Um OID é criado por uma autoridade de registo, de acordo com a série de normas ISO 9834. Na prática, é um identificador único, com regras simples de criação e gestão.</p>
  <p>Os OIDs são utilizados em documentos e mensagens HL7 para garantir unicidade global de identificadores e para identificar sistemas de vocabulário/terminologias usados em troca de informação clínica.</p>

  <h3>Utilização</h3>
  <ul>
    <li>Certificados X.509 (componentes de Distinguished Names, CPS, entre outros).</li>
    <li>Protocolos e esquemas X.500 e LDAP (atributos, classes de objetos e elementos de esquema).</li>
    <li>SNMP (identificação de nós em MIB).</li>
    <li>IANA PEN em 1.3.6.1.4.1 para OIDs privados de organizações.</li>
    <li>DICOM para gestão e transmissão de imagem médica.</li>
  </ul>
</article>

<article class="card" style="margin-top: 1.5rem;">
  <h2>Necessidades atuais em Portugal</h2>
  <p>Na área da saúde, projetos de partilha de informação que sigam normas como IHE necessitam de OIDs. O caso da infraestrutura XDS dos Açores é um exemplo recente.</p>
  <p>O SNS e as organizações nacionais podem necessitar de OIDs para objetos derivados de necessidades locais, língua e requisitos legais, por exemplo:</p>
  <ul>
    <li>Documentos</li>
    <li>Pacientes</li>
    <li>Funcionários</li>
    <li>Localizações</li>
    <li>Entidades</li>
    <li>Dispositivos</li>
    <li>Visitas ou episódios</li>
    <li>Requisições ou pedidos</li>
    <li>Secções</li>
    <li>Registos e notas clínicas</li>
    <li>Modelos</li>
    <li>Vocabulários locais</li>
    <li>Outros participantes</li>
  </ul>

  <h3>Exemplos de OIDs para a área da saúde em Portugal</h3>
  <ul>
    <li>Prestadores (públicos, privados, hospitais, centros de saúde, ARS).</li>
    <li>Subsistemas de saúde (Segurança Social, ADSE, SIBS, ADMG).</li>
    <li>Farmácias, consultórios e laboratórios.</li>
    <li>Empresas do setor.</li>
    <li>Emissores de identificadores de doentes.</li>
    <li>Distritos, concelhos, freguesias e localidades.</li>
    <li>Códigos de exames (LOINC, SNOMED CT, ICD).</li>
    <li>Identificação única de documentos clínicos e templates.</li>
  </ul>
</article>

<article class="card" style="margin-top: 1.5rem;">
  <h2>Estrutura de OIDs do HL7 Portugal</h2>
  <p>OID raiz do HL7 Portugal: <a href="http://oid-info.com/get/2.16.840.1.113883.2.52" target="_blank" rel="noopener noreferrer">2.16.840.1.113883.2.52</a> (atribuído pelo HL7 International).</p>
  <p>O HL7 Portugal adotou a estrutura de tipos abaixo para o primeiro nível:</p>
  <ul>
    <li>Tipo 1: HL7 registered internal objects</li>
    <li>Tipo 2: HL7 organizational bodies and groups</li>
    <li>Tipo 3: External group as registration authority</li>
    <li>Tipo 4: Externally maintained identifier systems</li>
    <li>Tipo 5: HL7 Internal Code Systems</li>
    <li>Tipo 6: Registered external coding systems</li>
    <li>Tipo 7: HL7 published document artifacts</li>
    <li>Tipo 8: Not used</li>
    <li>Tipo 9: HL7 conformance profiles</li>
    <li>Tipo 10: HL7 templates</li>
    <li>Tipo 11: HL7 value sets</li>
    <li>Tipo 12: HL7 v2.x tables</li>
    <li>Tipo 13: Externally curated value sets</li>
    <li>Tipo 14: Assignment ontology node</li>
    <li>Tipo 15: Small external code sets</li>
    <li>Tipo 16: Owner-specified type</li>
    <li>Tipo 18: HL7 v2.x coding systems</li>
    <li>Tipo 19: HL7 examples</li>
    <li>Tipo 21: V2.x table-based HL7 value sets</li>
  </ul>
</article>

<article class="card" style="margin-top: 1.5rem;">
  <h2>Perguntas frequentes</h2>
  <p>Aconselhamos a leitura de <a href="https://confluence.hl7.org/display/HDH/HL7+OID+Registry+Frequently+Asked+Questions#HL7OIDRegistryFrequentlyAskedQuestions-IhavenoideawhatTypeIshouldselectformyOID" target="_blank" rel="noopener noreferrer">HL7 OID Registry Frequently Asked Questions</a>.</p>

  <h3>Preciso de um OID?</h3>
  <p>Se a entidade atua na área da saúde e precisa de identificar objetos de forma única para interoperabilidade regional, nacional ou internacional, a resposta é sim.</p>
  <p>Também é recomendável para entidades que criam:</p>
  <ul>
    <li>Identifier Namespaces</li>
    <li>Terminology Identification</li>
    <li>Value Sets</li>
    <li>Conformance Profiles</li>
    <li>Templates</li>
  </ul>

  <h3>Como pedir um OID ao HL7 Portugal</h3>
  <p>Os pedidos devem ser enviados para <a href="mailto:info@hl7.pt">info@hl7.pt</a>.</p>
  <ul>
    <li>OID para catálogo geral de interesse público na saúde: gratuito.</li>
    <li>OID para entidade associada HL7 Portugal: gratuito.</li>
    <li>OID para demais entidades: custo de gestão de 200 EUR.</li>
  </ul>
</article>

<article class="card" style="margin-top: 1.5rem;">
  <h2>Formulário base para pedido de OID</h2>
  <p>Enquanto não existir formulário online, enviar por email para <a href="mailto:info@hl7.pt">info@hl7.pt</a> com os seguintes campos:</p>
  <ul>
    <li>Primeiro nome, último nome, email de quem submete.</li>
    <li>Contacto do registo: nome, função, telefone, email, morada.</li>
    <li>Entidade responsável: nome, telefone, email, morada, URL.</li>
    <li>Tipo, acrónimo desejado, nome completo do objeto e descrição detalhada.</li>
  </ul>
</article>

<article class="card" style="margin-top: 1.5rem;">
  <h2>Identificadores em mensagens HL7 v2.x</h2>
  <p>Em HL7 v2.x, os identificadores são enviados em tipos de dados como CK, CX, EI e relacionados, incluindo a autoridade de atribuição.</p>
  <pre><code>&lt;ID number&gt; ^ &lt;check digit&gt; ^ &lt;check digit scheme&gt; ^ &lt;assigning authority&gt;</code></pre>
  <p>Exemplo PID:</p>
  <pre><code>PID|||IHEBLUE-27091^^^&amp;1.3.6.1.4.1.21367.13.20.3000&amp;ISO||Extra-eu-eight^Claus||20160326|M|</code></pre>

  <h2>Identificadores em HL7 v3 / CDA</h2>
  <p>Em HL7 v3 utiliza-se o tipo de dado II, armazenando o identificador e a raiz de unicidade.</p>
  <pre><code>&lt;id extension="999021" root="2.16.840.1.113883.19.3.933.1.999021.1" assigningAuthorityName="HL7" displayable="true"/&gt;</code></pre>
</article>

<article class="card" style="margin-top: 1.5rem;">
  <h2>OIDs geridos pelo HL7 Portugal</h2>
  <div class="table-wrap">
    <table aria-label="OIDs geridos pelo HL7 Portugal">
      <thead>
        <tr>
          <th>OID</th>
          <th>Acrónimo</th>
          <th>Descrição</th>
          <th>Data</th>
          <th>Autoridade</th>
          <th>Estado</th>
        </tr>
      </thead>
      <tbody>
        <tr><td>2.16.840.1.113883.2.52</td><td>HL7 Portugal</td><td>HL7 Portugal</td><td>2022-06-15</td><td>HL7 International</td><td>Active</td></tr>
        <tr><td>2.16.840.1.113883.2.52.1</td><td>Tipo 1</td><td>HL7 registered internal objects</td><td>2022-07-13</td><td>HL7 Portugal</td><td>Active</td></tr>
        <tr><td>2.16.840.1.113883.2.52.2</td><td>Tipo 2</td><td>HL7 organizational bodies and groups</td><td>2022-07-13</td><td>HL7 Portugal</td><td>Active</td></tr>
        <tr><td>2.16.840.1.113883.2.52.3</td><td>Tipo 3</td><td>External registration authority</td><td>2022-07-13</td><td>HL7 Portugal</td><td>Active</td></tr>
        <tr><td>2.16.840.1.113883.2.52.3.1</td><td>Proside</td><td>Proside</td><td>2022-07-13</td><td>Proside</td><td>Active</td></tr>
        <tr><td>2.16.840.1.113883.2.52.3.2</td><td>HLTSYS</td><td>HLTSYS – HealthySystems</td><td>2022-07-13</td><td>HLTSYS</td><td>Active</td></tr>
        <tr><td>2.16.840.1.113883.2.52.3.3</td><td>ByMe</td><td>ByMe</td><td>2022-07-13</td><td>ByMe</td><td>Active</td></tr>
        <tr><td>2.16.840.1.113883.2.52.3.4</td><td>BIQ</td><td>BIQ</td><td>2022-07-13</td><td>BIQ</td><td>Active</td></tr>
        <tr><td>2.16.840.1.113883.2.52.3.5</td><td>Infortucano</td><td>Infortucano</td><td>2022-07-13</td><td>Infortucano</td><td>Active</td></tr>
        <tr><td>2.16.840.1.113883.2.52.3.6</td><td>First</td><td>First Solutions Sistemas</td><td>2022-07-13</td><td>First</td><td>Active</td></tr>
        <tr><td>2.16.840.1.113883.2.52.3.7</td><td>VirtualCare</td><td>VirtualCare Systems for Life</td><td>2022-07-13</td><td>VirtualCare</td><td>Active</td></tr>
        <tr><td>2.16.840.1.113883.2.52.3.8</td><td>Everis</td><td>Everis</td><td>2022-07-13</td><td>Everis</td><td>Active</td></tr>
        <tr><td>2.16.840.1.113883.2.52.3.9</td><td>Mediceus</td><td>Mediceus Dados de Saúde SA</td><td>2022-07-13</td><td>Mediceus</td><td>Active</td></tr>
        <tr><td>2.16.840.1.113883.2.52.3.10</td><td>Glintt</td><td>Glintt Healthcare Solutions</td><td>2022-07-13</td><td>Glintt</td><td>Active</td></tr>
        <tr><td>2.16.840.1.113883.2.52.3.11</td><td>ST+i</td><td>ST+I, Serviços Técnicos de Informática</td><td>2022-07-13</td><td>ST+i</td><td>Active</td></tr>
        <tr><td>2.16.840.1.113883.2.52.3.12</td><td>UpHill</td><td>UpHill</td><td>2022-07-13</td><td>UpHill</td><td>Active</td></tr>
        <tr><td>2.16.840.1.113883.2.52.3.13</td><td>Knok</td><td>Knokcare – Seems Possible, lda</td><td>2022-07-13</td><td>Knok</td><td>Active</td></tr>
        <tr><td>2.16.840.1.113883.2.52.3.14</td><td>Promptly</td><td>Promptly – Software Solutions For Health Measures, S.A.</td><td>2025-08-29</td><td>Promptly</td><td>Active</td></tr>
        <tr><td>2.16.840.1.113883.2.52.4</td><td>Tipo 4</td><td>Externally maintained identifier systems</td><td>2022-07-13</td><td>HL7 Portugal</td><td>Active</td></tr>
        <tr><td>2.16.840.1.113883.2.52.4.1</td><td>NNU</td><td>Número Nacional de Utente (SNS)</td><td>2022-07-13</td><td>SNS</td><td>Active</td></tr>
        <tr><td>2.16.840.1.113883.2.52.4.2</td><td>CC</td><td>Cartão de Cidadão</td><td>2022-07-13</td><td><a href="https://justica.gov.pt/" target="_blank" rel="noopener noreferrer">justica.gov.pt</a></td><td>Active</td></tr>
        <tr><td>2.16.840.1.113883.2.52.4.3</td><td>NIF</td><td>Número de identificação fiscal</td><td>2022-07-13</td><td></td><td>Active</td></tr>
        <tr><td>2.16.840.1.113883.2.52.4.4</td><td></td><td>Cédula profissional da Ordem dos Médicos</td><td>2022-07-13</td><td></td><td>Active</td></tr>
        <tr><td>2.16.840.1.113883.2.52.4.5</td><td>NISS</td><td>Número de Identificação da Segurança Social</td><td>2022-07-13</td><td></td><td>Active</td></tr>
        <tr><td>2.16.840.1.113883.2.52.4.6</td><td></td><td>Carta de condução</td><td>2022-07-13</td><td><a href="https://www.imt-ip.pt/" target="_blank" rel="noopener noreferrer">imt-ip.pt</a></td><td>Active</td></tr>
        <tr><td>2.16.840.1.113883.2.52.4.7</td><td></td><td>Cédula pessoal</td><td>2022-07-13</td><td></td><td>Active</td></tr>
        <tr><td>2.16.840.1.113883.2.52.6.1</td><td>CPARA</td><td>Catálogo Português de Alergias e Outras Reações Adversas</td><td>2022-07-13</td><td><a href="https://www.ctc.min-saude.pt/" target="_blank" rel="noopener noreferrer">CTC</a></td><td>Active</td></tr>
        <tr><td>2.16.840.1.113883.2.52.6.2</td><td>CPAL</td><td>Catálogo Português de Análises de Laboratório</td><td>2022-07-13</td><td><a href="https://www.ctc.min-saude.pt/" target="_blank" rel="noopener noreferrer">CTC</a></td><td>Active</td></tr>
        <tr><td>2.16.840.1.113883.2.52.6.3</td><td>CPN</td><td>Catálogo Português de Nutrição</td><td>2022-07-13</td><td><a href="https://www.ctc.min-saude.pt/" target="_blank" rel="noopener noreferrer">CTC</a></td><td>Active</td></tr>
        <tr><td>2.16.840.1.113883.2.52.6.4</td><td>CPV</td><td>Catálogo Português de Vacinas</td><td>2022-07-13</td><td><a href="https://www.ctc.min-saude.pt/" target="_blank" rel="noopener noreferrer">CTC</a></td><td>Active</td></tr>
        <tr><td>2.16.840.1.113883.2.52.6.5</td><td>CPARM</td><td>Catálogo Português de Apoio ao Registo da Medicação</td><td>2022-07-13</td><td><a href="https://www.ctc.min-saude.pt/" target="_blank" rel="noopener noreferrer">CTC</a></td><td>Active</td></tr>
        <tr><td>2.16.840.1.113883.2.52.6.6</td><td>CPGO</td><td>Catálogo Português de Ginecologia e Obstetrícia</td><td>2022-07-13</td><td><a href="https://www.ctc.min-saude.pt/" target="_blank" rel="noopener noreferrer">CTC</a></td><td>Active</td></tr>
        <tr><td>2.16.840.1.113883.2.52.6.7</td><td>CPMN</td><td>Catálogo Português de Medicina Nuclear</td><td>2022-07-13</td><td><a href="https://www.ctc.min-saude.pt/" target="_blank" rel="noopener noreferrer">CTC</a></td><td>Active</td></tr>
        <tr><td>2.16.840.1.113883.2.52.6.8</td><td>CPG</td><td>Catálogo Português de Gastrenterologia</td><td>2022-07-13</td><td><a href="https://www.ctc.min-saude.pt/" target="_blank" rel="noopener noreferrer">CTC</a></td><td>Active</td></tr>
        <tr><td>2.16.840.1.113883.2.52.6.9</td><td>CPR</td><td>Catálogo Português de Radiologia</td><td>2022-07-13</td><td><a href="https://www.ctc.min-saude.pt/" target="_blank" rel="noopener noreferrer">CTC</a></td><td>Active</td></tr>
        <tr><td>2.16.840.1.113883.2.52.6.10</td><td>CPARC</td><td>Catálogo Português de Apoio ao Registo Clínico</td><td>2022-07-13</td><td><a href="https://www.ctc.min-saude.pt/" target="_blank" rel="noopener noreferrer">CTC</a></td><td>Active</td></tr>
        <tr><td>2.16.840.1.113883.2.52.6.11</td><td>CPC</td><td>Catálogo Português de Cardiologia</td><td>2022-07-13</td><td><a href="https://www.ctc.min-saude.pt/" target="_blank" rel="noopener noreferrer">CTC</a></td><td>Active</td></tr>
        <tr><td>2.16.840.1.113883.2.52.6.12</td><td>CPAT</td><td>Catálogo Português de Atitudes Terapêuticas</td><td>2022-07-13</td><td><a href="https://www.ctc.min-saude.pt/" target="_blank" rel="noopener noreferrer">CTC</a></td><td>Active</td></tr>
      </tbody>
    </table>
  </div>
</article>

<article class="card" style="margin-top: 1.5rem;">
  <h2>Outros OIDs relevantes</h2>
  <div class="table-wrap">
    <table aria-label="Outros OIDs relevantes">
      <thead>
        <tr>
          <th>OID</th>
          <th>Acrónimo</th>
          <th>Descrição</th>
          <th>Autoridade</th>
        </tr>
      </thead>
      <tbody>
        <tr><td>2.16.840.1.113883.6.96</td><td>SNOMED-CT</td><td>Systematized Nomenclature in Medicine Clinical Terms</td><td>SNOMED International</td></tr>
        <tr><td>2.16.840.1.113883.6.103</td><td>ICD-9-CM Diagnoses</td><td>Diagnosis codes from US ICD-9-CM</td><td>WHO</td></tr>
        <tr><td>2.16.840.1.113883.6.1</td><td>LOINC</td><td>Logical Observation Identifiers Names and Codes</td><td>Regenstrief Institute</td></tr>
        <tr><td>2.16.840.1.113883.6.12</td><td>CPT-4</td><td>Common Procedure Terminology</td><td></td></tr>
        <tr><td>2.16.840.1.113883.6.104</td><td>ICD-9-CM Procedures</td><td>Procedure codes from US ICD-9-CM</td><td>WHO</td></tr>
        <tr><td>2.16.840.1.113883.6.88</td><td>RxNORM</td><td>US National Library of Medicine Drug Codes</td><td></td></tr>
        <tr><td>2.16.840.1.113883.6.69</td><td>NDC</td><td>US National Drug Codes</td><td></td></tr>
        <tr><td>2.16.840.1.113883.6.90</td><td>PH_DiseaseClassification_ICD-10CM</td><td>ICD-10-CM Diagnosis</td><td>WHO</td></tr>
        <tr><td>2.16.840.1.113883.6.3</td><td>PH_DiseaseClassification_ICD-10_WHO</td><td>ICD-10 WHO</td><td>WHO</td></tr>
        <tr><td>1.2.752.24.29</td><td>Sectra Iberia</td><td>Artces Unipessoal, Lda</td><td><a href="http://sectra.com/" target="_blank" rel="noopener noreferrer">sectra.com</a></td></tr>
        <tr><td>1.2.752.24</td><td>Sectra AB</td><td>Sectra Sweden</td><td><a href="http://sectra.com/" target="_blank" rel="noopener noreferrer">sectra.com</a></td></tr>
        <tr><td>2.16.840.1.113883.4.330.620</td><td>passportNumNS-PRT</td><td>Passport Numbers Namespace for Portugal</td><td>HL7 International</td></tr>
        <tr><td>2.16.840.1</td><td>HL7 International</td><td>Health Level 7 (HL7), Inc.</td><td></td></tr>
        <tr><td>2.16.620</td><td>Portugal</td><td>Portugal</td><td></td></tr>
        <tr><td>2.16.620.1.1</td><td>SCEE</td><td>Sistema de Certificação Eletrónica do Estado</td><td><a href="https://www.ecce.gov.pt/" target="_blank" rel="noopener noreferrer">ecce.gov.pt</a></td></tr>
        <tr><td>1.3.6.1.4.1.55196</td><td>DRSA</td><td>Direção Regional da Saúde dos Açores</td><td>DRSA</td></tr>
        <tr><td>1.3.6.1.4.1.55196.1.4</td><td>HSEIT</td><td>Hospital do Santo Espírito da Ilha Terceira</td><td>DRSA</td></tr>
        <tr><td>1.3.6.1.4.1.55196.1.3</td><td>HH</td><td>Hospital da Horta</td><td>DRSA</td></tr>
        <tr><td>1.3.6.1.4.1.55196.1.5</td><td>HDES</td><td>Hospital do Divino Espírito Santo</td><td>DRSA</td></tr>
        <tr><td>1.3.6.1.4.1.55196.1.32</td><td>COA</td><td>Centro Oncológico dos Açores</td><td>DRSA</td></tr>
        <tr><td>1.3.6.1.4.1.55196.1.1.2.6</td><td>DRS_XDS_DOM</td><td>Domínio de afinidade XDS da Direção Regional dos Açores</td><td>DRSA</td></tr>
      </tbody>
    </table>
  </div>
</article>

<article class="card" style="margin-top: 1.5rem;">
  <h2>Referências úteis</h2>
  <ul>
    <li><a href="http://www.hl7.org/OID/" target="_blank" rel="noopener noreferrer">HL7 OID Registry</a></li>
    <li><a href="http://www.oid-info.com/" target="_blank" rel="noopener noreferrer">General International OID Registry</a></li>
    <li><a href="http://www.alvestrand.no/objectid/" target="_blank" rel="noopener noreferrer">Harald Alvestrand - Object Identifiers</a></li>
    <li><a href="https://www.hl7spain.org/oid-de-uso-habitual-en-espana/" target="_blank" rel="noopener noreferrer">HL7 Spain OIDs</a></li>
    <li><a href="https://www.hl7.org.uk/standards/object-identifiers-oids/" target="_blank" rel="noopener noreferrer">HL7 UK OIDs</a></li>
    <li><a href="https://docslib.org/doc/10747911/ehdsi-v3-0-0-rc1-ehealth-dsi-master-value-set-catalogue" target="_blank" rel="noopener noreferrer">eHDSI Master Value Set Catalogue</a></li>
  </ul>
</article>
