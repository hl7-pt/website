---
layout: post
title: Crónica Janeiro 2024
date: '2024-02-12 11:27:32 +0000'
last_modified_at: '2024-02-12 11:35:04'
author: João Almeida
author_login: jalmeida
categories:
- Crónica
tags: []
image: https://www.hl7.pt/wp-content/uploads/2024/02/DALL·E-2024-02-12-11.32.55-Recreate-the-digital-healthcare-ecosystem-visualization-with-the-interoperability-between-openEHR-and-FHIR-systems-ensuring-the-correct-spelling-of-_.webp
excerpt: ''
wordpress_post_id: '3035'
wordpress_slug: cronica-janeiro-2024
wordpress_status: publish
wordpress_link: https://www.hl7.pt/cronica-janeiro-2024/
---

Para assinalar esta nova versão da newsletter, decidi abordar um tema que é querido a ambas as associações: <a href="https://openehr.org/">OpenEHR</a> e <a href="https://www.hl7.org/fhir/">HL7 FHIR</a>.

&nbsp;

O que muitas vezes se assume como standards competidores, é a meu ver uma sinergia excecional. A integração entre openEHR e FHIR poder representar um avanço significativo na interoperabilidade e gestão/armazenamento de informações de saúde, potencializando a criação de sistemas de informação em saúde mais robustos, interoperáveis, eficientes e centrados no doente. Espero, com esta crónica, explorar como a combinação destes dois standards promove uma maior capacidade de resposta aos desafios da saúde digital atual, destacando as suas características únicas e como elas se complementam.

&nbsp;

openEHR (open Electronic Health Record) é um standard orientado ao armazenamento ou registo eletrónico de informações de saúde. Foca-se na criação de registos clínicos eletrónicos detalhados e flexíveis. A base deste standard está no modelo de referência que define a estrutura dos dados de saúde e um conjunto alargado de arquétipos que descrevem os tipos específicos de dados clínicos. Sendo que estes arquétipos são frequentes construídos e especificados por experts do domínio (i.e., profissionais de saúde). É também flexível ao nível de implementação, pouco ou nada limitando nesse aspecto.

&nbsp;

FHIR (Fast Healthcare Interoperability Resources), por outro lado, é um standard promovido pelo HL7 <em>international</em> para a troca de informações de saúde. FHIR utiliza uma abordagem baseada em recursos para modelar dados de saúde, onde cada recurso representa um conceito clínico específico, como um doente, uma observação ou uma prescrição. Esses recursos são projetados para serem facilmente mapeados para os dados existentes em sistemas de saúde, tornando FHIR altamente interoperável e fácil de implementar. É também um standard de comunicação, sendo que é orientado a focar-se nas informações essenciais e não num modelo extenso como o OpenEHR.

&nbsp;

Acredito que a combinação de openEHR e FHIR oferece uma solução para alguns dos desafios existentes na saúde digital em Portugal e no mundo. Enquanto o openEHR fornece uma especificação robusta para o armazenamento e gestão de informação de saúde detalhados e estruturados, o FHIR facilita a troca eficiente desses dados entre diferentes sistemas e aplicações. Isto permite que os sistemas de informação de saúde consigam registar informação de uma maneira mais completa, eficaz e racional, assim como trocar esta informação de saúde de forma mais eficaz, melhorando a continuidade dos cuidados e a tomada de decisão clínica.

&nbsp;

Além disso, a integração entre openEHR e FHIR pode acelerar o desenvolvimento de novas soluções de saúde digitais. Como em muitos outros domínios, aqui também não é necessário reinventar a roda ou começar do zero. Tendo em conta que dispomos de pelo menos duas especificações extremamente robustas, nas quais as mentes mais brilhantes do setor dedicaram considerável tempo e discussão, vale a pena considerá-las. Dessa forma, tanto em termos de gestão quanto de desenvolvimento, é possível aproveitar os modelos detalhados e personalizáveis do openEHR, juntamente com a flexibilidade e a facilidade de uso das APIs FHIR, para criar soluções de forma mais ágil.

&nbsp;

Em conclusão, a combinação de openEHR e FHIR é um modelo que me parece vencedor. Se por um lado temos a expertise de domínio na criação de uma especificação completa, robusta e inteligível pelos utilizadores, por outro temos a facilidade de implementação do HL7 FHIR.

Este assunto é mais complexo do que consigo detalhar nesta crónica, nomeadamente detalhes técnicos ou aspetos mais relacionados com arquitetura de sistemas, assim como outros standards que são importantes considerar, como o <a href="https://www.ohdsi.org/data-standardization/">OMOP da ODHSI.</a> Mas deixaremos estes aspetos para uma outra crónica :)

<strong>João Almeida</strong>

Presidente HL7 Portugal<br data-rich-text-line-break="true" />Vice-Presidente e-MAIS
