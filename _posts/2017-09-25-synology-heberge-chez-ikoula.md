---
id: 1935
title: Synology hébergé chez iKoula
date: 2017-09-25T21:32:53+01:00
author: Steve
layout: post
guid: http://stevefuchs.fr/wordpress/?p=1935
permalink: /2017/09/25/synology-heberge-chez-ikoula/
categories: [Hardware]
tags: [synology]
---
# Pour quoi ?

Un NAS Synology est vraiment pratique. Je cherche cependant une solution pour faire des sauvegardes sur un autre site pour sécuriser mes données, et l&rsquo;une des solutions est d&rsquo;avoir un autre NAS Synology sur un site distant (chez un tiers de confiance par exemple).

J&rsquo;ai vu dans le Linux Magazine de mois un publicité d&rsquo;iKoula pour une location de NAS Synology hébergé chez eux. J&rsquo;ai eu envie de tester cette offre.

# Offres

L&rsquo;offre est variée, mais je trouve ça un peu cher.

![-]({{site.baseurl}}/wp-content/uploads/2017/09/2017-09-05_215408.png)

J&rsquo;ai pris un DS115J sur un mois, avec 2 To (offre la moins chère), pour mes tests.

A la date d&rsquo;écriture de cet article, sur LDLC, le DS115J est à 100 €. Un disque WD Red 2 To SATA 6Gb/s est à 105 €. Avec la promotion, on arrive à l&rsquo;équivalent du prix d&rsquo;achat au bout de 2 ans et 3 mois environs.

Pour un DS216J, qui est à 180 €, et le même disque, on arrive à l&rsquo;équivalent du prix d&rsquo;achat au bout de 1 an et 7 mois.

Pour comparaison, mon Synology a été acheté fin 2012 (DS213), j&rsquo;y ai mis deux disques de 2 To (dont un de récupération) et il fonctionne toujours sans soucis après presque 5 ans.

# Commande et livraison

Pas de surprise, la commande est facile a faire, et les options sont claires.

![-]({{site.baseurl}}/wp-content/uploads/2017/09/2017-09-05_142248.png)

La livraison est faite dans l&rsquo;heure:

![-]({{site.baseurl}}/wp-content/uploads/2017/09/2017-09-05_210509.png)

![-]({{site.baseurl}}/wp-content/uploads/2017/09/2017-09-05_210528.png)

![-]({{site.baseurl}}/wp-content/uploads/2017/09/2017-09-05_210617.png)

L&rsquo;interface de connexion est similaire à celle de mon Synology maison mais avec un arrière plan personnalisé iKoula:

![-]({{site.baseurl}}/wp-content/uploads/2017/09/2017-09-05_210603.png)

![-]({{site.baseurl}}/wp-content/uploads/2017/09/2017-09-05_211733.png)

![-]({{site.baseurl}}/wp-content/uploads/2017/09/2017-09-05_211931.png)

# Utilisation comme solution de sauvegarde

Pour mon test, j&rsquo;ai fait une sauvegarde de mon NAS Synology local vers mon NAS Synology iKoula

## Préparation du Synology distant

Sur le Synology iKoula, j&rsquo;ai créé un dossier partagé « Backup » et installeé Hyper Backup Vault.

![-]({{site.baseurl}}/wp-content/uploads/2017/09/2017-09-05_212231.png)

## Configuration de mon Synology local

J&rsquo;ai ouvert Hyper Backup pour créer une sauvegarde sur « Synology NAS distant »:

![-]({{site.baseurl}}/wp-content/uploads/2017/09/2017-09-05_212101.png)

Utilisation de l&rsquo;adresse IP du NAS iKoula et le compte admin directement:

![-]({{site.baseurl}}/wp-content/uploads/2017/09/2017-09-05_212822.png)

J&rsquo;ai démarré la sauvegarde, et j&rsquo;ai attendu&#8230;

Côté NAS distant:

![-]({{site.baseurl}}/wp-content/uploads/2017/09/2017-09-05_213321.png)

Côté NAS local:

![-]({{site.baseurl}}/wp-content/uploads/2017/09/2017-09-05_213334.png)

## Performances

J&rsquo;ai observé une progression de 292 Mo au bout de 54 minutes.

Si j&rsquo;extrapole: 1 Go au bout de 4 heures environs, 1 To au bout de 166 jours.

![-]({{site.baseurl}}/wp-content/uploads/2017/09/2017-09-05_222837.png)

Avec une bonne connexion, je pense qu&rsquo;on peut bien réduire cette durée.

# Conclusion

La solution est intéressante, a le mérite d&rsquo;exister, est simple à mettre en oeuvre, mais pour de la sauvegarde comme dans mon cas, il y a moins cher.

EDIT / 25 septembre 2017: un sympathique collaborateur de iKoula m&rsquo;a appelé pour en savoir plus sur ma résiliation et me proposer d&rsquo;éventuelles solutions aux problèmes rencontrés. J&rsquo;ai apprécié.