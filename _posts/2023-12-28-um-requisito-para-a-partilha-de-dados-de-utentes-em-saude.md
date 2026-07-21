---
layout: post
title: Um requisito para a partilha de  dados de utentes em saúde
date: '2023-12-28 15:15:34 +0000'
last_modified_at: '2023-12-28 15:15:34'
author: HL7 Portugal
author_login: pauloalves_5m7gh4tn
categories:
- Crónica
tags:
- fhir
- hl7v2
- ihe
- mhds
- pix
image: https://www.hl7.pt/wp-content/uploads/2023/12/DALL·E-2023-12-28-15.11.48-A-conceptual-artwork-depicting-the-challenges-of-consolidating-health-information-systems.-The-image-shows-a-large-complex-network-of-interconnected-.png
excerpt: ''
wordpress_post_id: '3025'
wordpress_slug: um-requisito-para-a-partilha-de-dados-de-utentes-em-saude
wordpress_status: publish
wordpress_link: https://www.hl7.pt/um-requisito-para-a-partilha-de-dados-de-utentes-em-saude/
---

<h3 data-pm-slice="0 0 []"><strong>Consolidação de informação em saúde</strong></h3>
A consolidação de dados de utentes em saúde é um tema que tem estado na atualidade desde há muitos anos. Os profissionais de saúde e os utentes não compreendem como é que uma coisa tão óbvia, como sendo o acesso transversal a todos os dados de saúde de uma determinada pessoa não são uma realidade nos dias que correm. Os informáticos da saúde minoram ou subestimam o problema desde há muitos anos. Mais que tudo, uma grande parte dos profissionais da saúde desconhecem como resolver o problema de forma eficaz, devido à complexidade envolvida e às alterações profundas que seriam necessárias implementar, por forma a ter uma solução sólida e de futuro.

Do outro lado, os fornecedores das tecnologias de informação (TI) têm não só os mesmos problemas, como também lhes interessa manter o status-quo atual, uma vez que se pretendem destacar das demais soluções com uma oferta “diferenciada”, vendendo por um preço extra, uma interoperabilidade com a solução de outro fornecedor de TI, que outros fornecedores de TI do mesmo tipo de aplicação não conseguem.

Esta solução “diferenciada” raramente está desenvolvida em cooperação com ambos os fornecedores de TI sobre a qual a partilha de dados deve ocorrer, e quando o é, costuma envolver premissas e tecnologias ineficientes e sem futuro.

Para que se possam consolidar dados, é necessário o acesso aos mesmos. Quase sempre é necessário que esses dados sejam anexados a muitos outros que vêm de dezenas ou centenas de aplicações de saúde que recolheram essas informações. Para que exista essa partilha de informação, é necessário que os sistemas “falem” entre si, trocando informação relevante, de forma a que todos eles a compreendam (sem ambiguidade). Os mecanismos de interoperabilidade em saúde são quase sempre complexos, devido ao tipo de dados envolvidos, onde uma diferença de interpretação pode levar a diagnósticos errados de utentes.

Se tentarmos focar-nos apenas nos problemas básicos, ressalta de imediato que, para que se possa partilhar qualquer informação sobre um determinado utente entre vários sistemas TI, <strong>um requisito é que é necessário que todos os sistemas envolvidos saibam identificar inequivocamente o mesmo utente.</strong>
<h3><strong>Identificação de utentes</strong></h3>
Este problema não existiria, se todos os utentes fossem identificados pelo mesmo identificador. Mas esta não é a realidade, e nunca vai ser. Quem possa achar que todas as aplicações em saúde deveriam de utilizar apenas o Número Nacional de Utente (NNU) como identificador não será bem sucedido, e não tem sido bem sucedido nos últimos anos, apesar de que muitas aplicações já o fazem. O peso das chamadas aplicações “legacy” que não têm este como identificador primário é grande, e mais cedo ou mais tarde, o NNU também ele será colocado em causa contra um qualquer número de identificação Europeu (ou outro), uma vez que todos quereremos um dia que os nossos dados estejam presentes num qualquer hospital da Europa, se de alguma forma estes forem lá necessários, por exemplo numa visita ao estrangeiro.

Uma garantia que temos, é de que os identificadores de pessoas (ou utentes) são muitos, e irão continuar a aumentar (pense em quantos nomes de utilizador tem para as várias aplicações que utiliza). Não faz sentido gastar dinheiro a fazer migração de identificadores de utentes, já que é uma tarefa inglória. Mais vale investir esses recursos em fazer com que as aplicações TI da saúde entendam os inevitáveis múltiplos identificadores, e os saibam gerir, por forma a poderem obter dados de saúde de outras aplicações.
<h3><strong>Identificadores de utentes</strong></h3>
Todas as aplicações que estejam bem desenhadas, deverão ter um identificador de utente interno que seja só da aplicação. Este identificador deve ser uma chave única, não reutilizável, que persista durante toda a existência do utente associado. Nas aplicações modernas, esta chave terá muitos caracteres e números, e por consequência pouco prática para ser utilizada pelas pessoas em cartões ou no dia- a-dia pelos utilizadores. Este é o identificador interno de utente numa aplicação, e não deverá ser confundido com uma lista de identificadores externos, de âmbito Regional, Nacional, Europeu ou Internacional, que tem determinado âmbito. Estes identificadores externos são geridos por entidades externas às aplicações da saúde, mas sem dúvida que serão sempre vários. Em resumo, as aplicações TI de saúde deverão ser capazes de registar uma lista de identificadores externos que identificam um utente. Um identificador externo deverá ser registado por um utilizador humano, ou idealmente a aplicação poderá manter a sua lista atualizada, obtendo a lista de identificadores externos, de uma aplicação dedicada a gerir identificadores de utentes, à qual damos o nome de “Master Patient Index” (MPI). Como exemplo, identificadores externos de pessoas podem ser o NNU, o Número de Identificação Fiscal (NIF), o número de Cartão de Cidadão (CC) ou o “European Health Insurance Card”. É questionável se o número de SONHO ou SINUS são identificadores externos de utentes.
<h3><strong>Normas Internacionais</strong></h3>
Regra geral, quem desenvolve as aplicações TI em saúde, evita a utilização de boas práticas e normas internacionais já validadas, alegando como principais razões, que a sua adoção é complexa (as normas são muito extensas) e por outro lado, que os compradores destas soluções não exigem tais tipos de integrações. Como resultado do problema do ovo e da galinha, é que praticamente não existem em Portugal, aplicações que implementem as normas internacionais para a identificação de utentes em saúde.
<h3><strong>Normas disponíveis</strong></h3>
Existem dois perfis <a tabindex="-1" href="https://www.ihe.net/" target="_blank" rel="noopener">IHE</a> que foram publicados com o objetivo de harmonizar a identificação de utentes em saúde. O perfil <a tabindex="-1" href="https://wiki.ihe.net/index.php/Patient_Identifier_Cross-Referencing" target="_blank" rel="noopener">“Patient Identifier Cross-Referencing” (PIX),</a> para implementações baseadas em <a tabindex="-1" href="http://www.hl7.org/implement/standards/product_brief.cfm?product_id=185" target="_blank" rel="noopener">HL7 versão 2.x</a> e o <a tabindex="-1" href="https://wiki.ihe.net/index.php/Mobile_Health_Document_Sharing_(MHDS)" target="_blank" rel="noopener">“Mobile Health Document Sharing” (MHDS)</a>, para utilização de <a tabindex="-1" href="http://www.hl7.org/implement/standards/product_brief.cfm?product_id=491" target="_blank" rel="noopener">HL7 FHIR</a>. Para além de complexas, estas normas implicam a existência de determinados “atores”, alguns dos quais não existem ao nível Nacional, por Região ou Prestadores. A sua implementação é certamente difícil, obrigando à adaptação de virtualmente todas as aplicações na área da saúde. Aquilo que se tem presenciado, é um conjunto de iniciativas isoladas, com gasto de recursos preciosos em soluções proprietárias sem futuro ou devotas ao insucesso ou falhas graves, principalmente na perspetiva da segurança dos dados.
<h3><strong>Leis</strong></h3>
A utilização de normas internacionais é, em regra geral, uma opção e não uma imposição. Não existem Leis em Portugal, que digam como teria de ser feita a gestão de identificação de utentes pelas aplicações em saúde. Se existisse tal Lei, esta poderia ser um pau de dois bicos, já que poderia impor a utilização de práticas que não sejam as melhores práticas pela utilização de normas internacionais. A acontecer, uma das possíveis consequências, é de que muitas aplicações governamentais da área da saúde teriam de ser modificadas ou deixar de existir, o que é muito improvável.
<h3><strong>Conclusão</strong></h3>
O problema da identificação de utentes, como impedimento À partilha de informação de dados em saúde é real. Há um conjunto de interesses contraditórios, por parte dos fabricantes de soluções de TI e dos informáticos e das Entidades de saúde, que estão a protelar e a dificultar a implementação de uma correta gestão da identificação de utentes. A causa da não solução do problema em Portugal, é mais de índole política que outra qualquer razão. Falta de dinheiro certamente não é um dos problemas. Foi gasto muito dinheiro em soluções sem futuro, e sem que se traduzam em tomadas de decisão clínicas mais eficientes para os utentes em saúde, que é o objetivo final.

&nbsp;

António Martins
