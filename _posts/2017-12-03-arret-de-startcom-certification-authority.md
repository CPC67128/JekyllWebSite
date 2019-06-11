---
id: 2040
title: Arrêt de StartCom Certification Authority
date: 2017-12-03T10:03:38+01:00
author: Steve
layout: post
guid: http://stevefuchs.fr/wordpress/?p=2040
permalink: /2017/12/03/arret-de-startcom-certification-authority/
categories:
  - Software
tags:
  - Web
---
J&rsquo;ai reçu l&#8217;email suivant en date du 2 décembre 2017 qui confirme ce qui devait arriver au sujet des certificats SSL gratuits de StartCom. L&rsquo;alternative la plus intéressante selon moi à ce jour est [Let&rsquo;s Encrypt](https://letsencrypt.org/).

<pre><em>StartCom temination announcement</em>

<em>This is an automatically generated email, please do not reply.</em>

<em>Dear customer,</em>

<em>As you are surely aware, the browser makers distrusted StartCom around a year ago and therefore all the end entity certificates newly issued by StartCom are not trusted by default in browsers.</em>

<em>The browsers imposed some conditions in order for the certificates to be re-accepted. While StartCom believes that these conditions have been met, it appears there are still certain difficulties forthcoming. Considering this situation, the owners of StartCom have decided to terminate the company as a Certification Authority as mentioned in Startcom´s website.</em>

<em>StartCom will stop issuing new certificates starting from January 1st, 2018 and will provide only CRL and OCSP services for two more years.</em>

<em>StartCom would like to thank you for your support during this difficult time.</em>

<em>StartCom is contacting some other CAs to provide you with the certificates needed. In case you don´t want us to provide you an alternative, please, contact us at <b>xxx@startcomca.com</b></em>

<em>Please let us know if you need any further assistance with the transition process. We deeply apologize for any inconveniences that this may cause.</em>

<em>Best regards,</em>

<em>StartCom Certification Authority</em>
</pre>

Le message est également relayé sur leur site Internet:

<pre>Termination of StartCom business

16th Nov. 2017. StartCom has played a critical role as a Certification Authority in data security and electronic commerce by providing an independent "trusted third party" guarantee all these years.
Around a year ago the majority of the browser makers decided to distrust StartCom, remove the StartCom root certificates from their root stores and not accept newly end entity certificates issued by StartCom.
Despite the efforts made during this time by StartCom, up to now, there has not been any clear indication from the browsers that StartCom would be able to regain the trust. Therefore, the owners of StartCom have decided to terminate StartCom as a Certification Authority (CA).
From January 1st, 2018, StartCom will not issue any new end entity certificate and will only provide validation services through its OCSP and CRL services for two years from January 1st, 2018. Starting 2020, all remaining valid certificates will be revoked. StartCom wants to thank all of our customers and partners during these years for their support.
</pre>

&nbsp;