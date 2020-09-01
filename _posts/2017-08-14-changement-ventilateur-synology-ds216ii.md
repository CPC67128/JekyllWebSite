---
id: 1816
title: Changement ventilateur Synology DS216+II
date: 2017-08-14T20:03:59+01:00
author: Steve
layout: post
guid: http://stevefuchs.fr/wordpress/?p=1816
permalink: /posts/changement-ventilateur-synology-ds216ii/
categories: [Hardware]
tags: [NAS,silence,stockage,synology]
---
J&rsquo;ai fait l&rsquo;acquisition d&rsquo;un Synology DS216+II pour remplacer mon Synology DS213, mais j&rsquo;ai été déçu en découvrant que le ventilateur ne s&rsquo;éteignait pas en mode hibernation. Après quelques recherches, il s&rsquo;avère que ce mode de fonctionnement est normal avec les modèles Synology équipés de processeurs Celeron.

J&rsquo;ai mis le ventilateur dans le mode calme, ce dernier est peu audible hormis des tout petits claquements qui se font entendre depuis le ventilateur et qui s&rsquo;avèrent agaçant.

J&rsquo;ai cherché et trouvé plusieurs articles (en particulier celui de [Lokan.jp](https://lokan.jp/2016/03/17/silence-remplace-ventilateur-nas-synology/)) expliquant qu&rsquo;il est possible de changer le ventilateur.

J&rsquo;ai donc commandé un Noctua NF-A9 PWM 92 mm sur [Amazon](https://www.amazon.fr/NF-A9-PWM-ventilateur-refroidisseur-radiateur/dp/B00RUZ059O/) qui semblait le avoir les bonnes dimensions et qui était le plus plébiscité.

Déballage du paquet du ventilateur Noctua:

![-]({{site.baseurl}}/wp-content/uploads/2017/08/DSC09892.jpg)

Pour accéder au ventilateur du DS216+II, il faut le démonter.

Il y a 4 vis pour le ventilateur à l&rsquo;arrière à enlever (facile).

Après j&rsquo;ai un peu cherché pour sortir le ventilateur. Il s&rsquo;avère qu&rsquo;il faut ouvrir le boitier du NAS. Pour ce faire, sortir les disques durs, et vous remarquerez 2 points d&rsquo;accroches en plastique. Il faut un peu faire levier sur la barre métallique pour que les deux parties du Synology se déboîtent. Faites attention, ça peut vite rentrer un peu dans la chair 🙂

![-]({{site.baseurl}}/wp-content/uploads/2017/08/DSC09896.jpg)

![-]({{site.baseurl}}/wp-content/uploads/2017/08/DSC09897.jpg)

Vu sur le ventilateur et sa connectique:

![-]({{site.baseurl}}/wp-content/uploads/2017/08/DSC09898.jpg)

![-]({{site.baseurl}}/wp-content/uploads/2017/08/DSC09899.jpg)

![-]({{site.baseurl}}/wp-content/uploads/2017/08/DSC09900.jpg)

Le ventilateur d&rsquo;origine du DS216+II:

![-]({{site.baseurl}}/wp-content/uploads/2017/08/DSC09901.jpg)

Comparaison entre les deux ventilateurs (origine à gauche, Noctua à droite): les épaisseurs sont identiques (hormis les petits amortisseurs des bords du Noctua que l&rsquo;on peut enlever)

![-]({{site.baseurl}}/wp-content/uploads/2017/08/DSC09902.jpg)

![-]({{site.baseurl}}/wp-content/uploads/2017/08/DSC09903.jpg)

Mise en place:

![-]({{site.baseurl}}/wp-content/uploads/2017/08/DSC09904.jpg)

![-]({{site.baseurl}}/wp-content/uploads/2017/08/DSC09905.jpg)

J&rsquo;ai essayé d&rsquo;utiliser les fixations caoutchoucs fournies (prévues pour des grilles) au lieu des vis mais sans succès, ce n&rsquo;est pas adapté. A moins de démonter tout le NAS, il n&rsquo;est pas possible de fixer l&rsquo;un des coins.

![-]({{site.baseurl}}/wp-content/uploads/2017/08/DSC09907.jpg)

J&rsquo;ai donc remis les vis du ventilateur d&rsquo;origine en laissant les petits amortisseurs caoutchoucs (fragiles), mais je doute que cela soit utile :

![-]({{site.baseurl}}/wp-content/uploads/2017/08/DSC09908.jpg)

Pour la connectique, il faut brancher le câble du ventilateur avec connecteur 4 fils sur le connecteur 3 points du NAS. J&rsquo;ai fait un premier test et ça fonctionne sans problème.

![-]({{site.baseurl}}/wp-content/uploads/2017/08/DSC09911.jpg)

![-]({{site.baseurl}}/wp-content/uploads/2017/08/DSC09913.jpg)

![-]({{site.baseurl}}/wp-content/uploads/2017/08/DSC09915.jpg)

J&rsquo;ai ensuite testé avec le petit câble Low-Noise Adapter (L.N.A.) founie avec le Noctua qu&rsquo;il suffit de brancher en premier (brancher le ventilateur sur ce câble). Et c&rsquo;est encore plus silencieux.

![-]({{site.baseurl}}/wp-content/uploads/2017/08/DSC09917.jpg)

Quelques photos du montage final:

![-]({{site.baseurl}}/wp-content/uploads/2017/08/DSC09918.jpg)

![-]({{site.baseurl}}/wp-content/uploads/2017/08/DSC09919.jpg)

En conclusion, le remplacement du ventilateur d&rsquo;origine du DS216+II par un ventilateur Noctua ne réduit pas au silence son NAS, mais il m&rsquo;a permis de supprimer ce petit claquement désagréable que j&rsquo;entendais. Au démarrage, le NAS fait tout de même des petits claquements qui disparaissent une fois l&rsquo;initialisation terminée. Le changement me convient tout à fait.