---
id: 1816
title: Changement ventilateur Synology DS216+II
date: 2017-08-14T20:03:59+01:00
author: Steve
layout: post
guid: http://stevefuchs.fr/wordpress/?p=1816
permalink: /2017/08/14/changement-ventilateur-synology-ds216ii/
categories:
  - Hardware
tags:
  - nas
  - silence
  - stockage
  - synology
---
J&rsquo;ai fait l&rsquo;acquisition d&rsquo;un Synology DS216+II pour remplacer mon Synology DS213, mais j&rsquo;ai été déçu en découvrant que le ventilateur ne s&rsquo;éteignait pas en mode hibernation. Après quelques recherches, il s&rsquo;avère que ce mode de fonctionnement est normal avec les modèles Synology équipés de processeurs Celeron.

J&rsquo;ai mis le ventilateur dans le mode calme, ce dernier est peu audible hormis des tout petits claquements qui se font entendre depuis le ventilateur et qui s&rsquo;avèrent agaçant.

J&rsquo;ai cherché et trouvé plusieurs articles (en particulier celui de [Lokan.jp](https://lokan.jp/2016/03/17/silence-remplace-ventilateur-nas-synology/)) expliquant qu&rsquo;il est possible de changer le ventilateur.

J&rsquo;ai donc commandé un Noctua NF-A9 PWM 92 mm sur [Amazon](https://www.amazon.fr/NF-A9-PWM-ventilateur-refroidisseur-radiateur/dp/B00RUZ059O/) qui semblait le avoir les bonnes dimensions et qui était le plus plébiscité.

Déballage du paquet du ventilateur Noctua:

<a href="http://stevefuchs.fr/wordpress/2017/08/14/changement-ventilateur-synology-ds2016ii/dsc09892/" rel="attachment wp-att-1818"><img class="alignnone wp-image-1818" src="https://i1.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09892.jpg?resize=840%2C775" alt="" width="840" height="775" srcset="https://i1.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09892.jpg?w=1000 1000w, https://i1.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09892.jpg?resize=300%2C277 300w, https://i1.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09892.jpg?resize=768%2C709 768w" sizes="(max-width: 709px) 85vw, (max-width: 909px) 67vw, (max-width: 1362px) 62vw, 840px" data-recalc-dims="1" /></a>

Pour accéder au ventilateur du DS216+II, il faut le démonter.

Il y a 4 vis pour le ventilateur à l&rsquo;arrière à enlever (facile).

Après j&rsquo;ai un peu cherché pour sortir le ventilateur. Il s&rsquo;avère qu&rsquo;il faut ouvrir le boitier du NAS. Pour ce faire, sortir les disques durs, et vous remarquerez 2 points d&rsquo;accroches en plastique. Il faut un peu faire levier sur la barre métallique pour que les deux parties du Synology se déboîtent. Faites attention, ça peut vite rentrer un peu dans la chair 🙂

<a href="http://stevefuchs.fr/wordpress/2017/08/14/changement-ventilateur-synology-ds2016ii/dsc09896/" rel="attachment wp-att-1819"><img class="alignnone size-large wp-image-1819" src="https://i0.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09896.jpg?resize=633%2C1000" alt="" width="633" height="1000" srcset="https://i0.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09896.jpg?w=633 633w, https://i0.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09896.jpg?resize=190%2C300 190w" sizes="(max-width: 709px) 85vw, (max-width: 909px) 67vw, (max-width: 984px) 61vw, (max-width: 1362px) 45vw, 600px" data-recalc-dims="1" /></a>

<a href="http://stevefuchs.fr/wordpress/2017/08/14/changement-ventilateur-synology-ds2016ii/dsc09897/" rel="attachment wp-att-1820"><img class="alignnone size-large wp-image-1820" src="https://i2.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09897.jpg?resize=840%2C630" alt="" width="840" height="630" srcset="https://i2.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09897.jpg?w=1000 1000w, https://i2.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09897.jpg?resize=300%2C225 300w, https://i2.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09897.jpg?resize=768%2C576 768w" sizes="(max-width: 709px) 85vw, (max-width: 909px) 67vw, (max-width: 1362px) 62vw, 840px" data-recalc-dims="1" /></a>

Vu sur le ventilateur et sa connectique:

<a href="http://stevefuchs.fr/wordpress/2017/08/14/changement-ventilateur-synology-ds2016ii/dsc09898/" rel="attachment wp-att-1821"><img class="alignnone size-large wp-image-1821" src="https://i1.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09898.jpg?resize=840%2C507" alt="" width="840" height="507" srcset="https://i1.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09898.jpg?w=1000 1000w, https://i1.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09898.jpg?resize=300%2C181 300w, https://i1.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09898.jpg?resize=768%2C463 768w" sizes="(max-width: 709px) 85vw, (max-width: 909px) 67vw, (max-width: 1362px) 62vw, 840px" data-recalc-dims="1" /></a>

<a href="http://stevefuchs.fr/wordpress/2017/08/14/changement-ventilateur-synology-ds2016ii/dsc09899/" rel="attachment wp-att-1822"><img class="alignnone size-large wp-image-1822" src="https://i1.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09899.jpg?resize=840%2C630" alt="" width="840" height="630" srcset="https://i1.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09899.jpg?w=1000 1000w, https://i1.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09899.jpg?resize=300%2C225 300w, https://i1.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09899.jpg?resize=768%2C576 768w" sizes="(max-width: 709px) 85vw, (max-width: 909px) 67vw, (max-width: 1362px) 62vw, 840px" data-recalc-dims="1" /></a>

<a href="http://stevefuchs.fr/wordpress/2017/08/14/changement-ventilateur-synology-ds2016ii/dsc09900/" rel="attachment wp-att-1823"><img class="alignnone size-large wp-image-1823" src="https://i2.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09900.jpg?resize=840%2C630" alt="" width="840" height="630" srcset="https://i2.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09900.jpg?w=1000 1000w, https://i2.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09900.jpg?resize=300%2C225 300w, https://i2.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09900.jpg?resize=768%2C576 768w" sizes="(max-width: 709px) 85vw, (max-width: 909px) 67vw, (max-width: 1362px) 62vw, 840px" data-recalc-dims="1" /></a>

Le ventilateur d&rsquo;origine du DS216+II:

<a href="http://stevefuchs.fr/wordpress/2017/08/14/changement-ventilateur-synology-ds2016ii/dsc09901/" rel="attachment wp-att-1824"><img class="alignnone size-large wp-image-1824" src="https://i2.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09901.jpg?resize=840%2C485" alt="" width="840" height="485" srcset="https://i2.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09901.jpg?w=1000 1000w, https://i2.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09901.jpg?resize=300%2C173 300w, https://i2.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09901.jpg?resize=768%2C443 768w" sizes="(max-width: 709px) 85vw, (max-width: 909px) 67vw, (max-width: 1362px) 62vw, 840px" data-recalc-dims="1" /></a>

Comparaison entre les deux ventilateurs (origine à gauche, Noctua à droite): les épaisseurs sont identiques (hormis les petits amortisseurs des bords du Noctua que l&rsquo;on peut enlever)

<a href="http://stevefuchs.fr/wordpress/2017/08/14/changement-ventilateur-synology-ds2016ii/dsc09902/" rel="attachment wp-att-1825"><img class="alignnone size-large wp-image-1825" src="https://i2.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09902.jpg?resize=840%2C195" alt="" width="840" height="195" srcset="https://i2.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09902.jpg?w=1000 1000w, https://i2.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09902.jpg?resize=300%2C70 300w, https://i2.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09902.jpg?resize=768%2C178 768w" sizes="(max-width: 709px) 85vw, (max-width: 909px) 67vw, (max-width: 1362px) 62vw, 840px" data-recalc-dims="1" /></a>

<a href="http://stevefuchs.fr/wordpress/2017/08/14/changement-ventilateur-synology-ds2016ii/dsc09903/" rel="attachment wp-att-1826"><img class="alignnone size-large wp-image-1826" src="https://i1.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09903.jpg?resize=840%2C255" alt="" width="840" height="255" srcset="https://i1.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09903.jpg?w=1000 1000w, https://i1.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09903.jpg?resize=300%2C91 300w, https://i1.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09903.jpg?resize=768%2C233 768w" sizes="(max-width: 709px) 85vw, (max-width: 909px) 67vw, (max-width: 1362px) 62vw, 840px" data-recalc-dims="1" /></a>

Mise en place:

<a href="http://stevefuchs.fr/wordpress/2017/08/14/changement-ventilateur-synology-ds2016ii/dsc09904/" rel="attachment wp-att-1827"><img class="alignnone size-large wp-image-1827" src="https://i0.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09904.jpg?resize=750%2C1000" alt="" width="750" height="1000" srcset="https://i0.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09904.jpg?w=750 750w, https://i0.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09904.jpg?resize=225%2C300 225w" sizes="(max-width: 709px) 85vw, (max-width: 909px) 67vw, (max-width: 984px) 61vw, (max-width: 1362px) 45vw, 600px" data-recalc-dims="1" /></a>

<a href="http://stevefuchs.fr/wordpress/2017/08/14/changement-ventilateur-synology-ds2016ii/dsc09905/" rel="attachment wp-att-1828"><img class="alignnone size-large wp-image-1828" src="https://i2.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09905.jpg?resize=840%2C630" alt="" width="840" height="630" srcset="https://i2.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09905.jpg?w=1000 1000w, https://i2.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09905.jpg?resize=300%2C225 300w, https://i2.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09905.jpg?resize=768%2C576 768w" sizes="(max-width: 709px) 85vw, (max-width: 909px) 67vw, (max-width: 1362px) 62vw, 840px" data-recalc-dims="1" /></a>

J&rsquo;ai essayé d&rsquo;utiliser les fixations caoutchoucs fournies (prévues pour des grilles) au lieu des vis mais sans succès, ce n&rsquo;est pas adapté. A moins de démonter tout le NAS, il n&rsquo;est pas possible de fixer l&rsquo;un des coins.

<a href="http://stevefuchs.fr/wordpress/2017/08/14/changement-ventilateur-synology-ds2016ii/dsc09907/" rel="attachment wp-att-1829"><img class="alignnone size-large wp-image-1829" src="https://i1.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09907.jpg?resize=840%2C967" alt="" width="840" height="967" srcset="https://i1.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09907.jpg?w=869 869w, https://i1.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09907.jpg?resize=261%2C300 261w, https://i1.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09907.jpg?resize=768%2C884 768w" sizes="(max-width: 709px) 85vw, (max-width: 909px) 67vw, (max-width: 1362px) 62vw, 840px" data-recalc-dims="1" /></a>

J&rsquo;ai donc remis les vis du ventilateur d&rsquo;origine en laissant les petits amortisseurs caoutchoucs (fragiles), mais je doute que cela soit utile :

<a href="http://stevefuchs.fr/wordpress/2017/08/14/changement-ventilateur-synology-ds2016ii/dsc09908/" rel="attachment wp-att-1830"><img class="alignnone size-large wp-image-1830" src="https://i2.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09908.jpg?resize=840%2C587" alt="" width="840" height="587" srcset="https://i2.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09908.jpg?w=1000 1000w, https://i2.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09908.jpg?resize=300%2C210 300w, https://i2.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09908.jpg?resize=768%2C537 768w" sizes="(max-width: 709px) 85vw, (max-width: 909px) 67vw, (max-width: 1362px) 62vw, 840px" data-recalc-dims="1" /></a>

Pour la connectique, il faut brancher le câble du ventilateur avec connecteur 4 fils sur le connecteur 3 points du NAS. J&rsquo;ai fait un premier test et ça fonctionne sans problème.

<a href="http://stevefuchs.fr/wordpress/2017/08/14/changement-ventilateur-synology-ds2016ii/dsc09911/" rel="attachment wp-att-1831"><img class="alignnone size-large wp-image-1831" src="https://i1.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09911.jpg?resize=750%2C1000" alt="" width="750" height="1000" srcset="https://i1.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09911.jpg?w=750 750w, https://i1.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09911.jpg?resize=225%2C300 225w" sizes="(max-width: 709px) 85vw, (max-width: 909px) 67vw, (max-width: 984px) 61vw, (max-width: 1362px) 45vw, 600px" data-recalc-dims="1" /></a>

<a href="http://stevefuchs.fr/wordpress/2017/08/14/changement-ventilateur-synology-ds2016ii/dsc09913/" rel="attachment wp-att-1832"><img class="alignnone size-large wp-image-1832" src="https://i1.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09913.jpg?resize=840%2C630" alt="" width="840" height="630" srcset="https://i1.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09913.jpg?w=1000 1000w, https://i1.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09913.jpg?resize=300%2C225 300w, https://i1.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09913.jpg?resize=768%2C576 768w" sizes="(max-width: 709px) 85vw, (max-width: 909px) 67vw, (max-width: 1362px) 62vw, 840px" data-recalc-dims="1" /></a>

<a href="http://stevefuchs.fr/wordpress/2017/08/14/changement-ventilateur-synology-ds2016ii/dsc09915/" rel="attachment wp-att-1833"><img class="alignnone size-large wp-image-1833" src="https://i0.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09915.jpg?resize=750%2C1000" alt="" width="750" height="1000" srcset="https://i0.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09915.jpg?w=750 750w, https://i0.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09915.jpg?resize=225%2C300 225w" sizes="(max-width: 709px) 85vw, (max-width: 909px) 67vw, (max-width: 984px) 61vw, (max-width: 1362px) 45vw, 600px" data-recalc-dims="1" /></a>

J&rsquo;ai ensuite testé avec le petit câble Low-Noise Adapter (L.N.A.) founie avec le Noctua qu&rsquo;il suffit de brancher en premier (brancher le ventilateur sur ce câble). Et c&rsquo;est encore plus silencieux.

<a href="http://stevefuchs.fr/wordpress/2017/08/14/changement-ventilateur-synology-ds2016ii/dsc09917/" rel="attachment wp-att-1834"><img class="alignnone size-large wp-image-1834" src="https://i2.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09917.jpg?resize=840%2C630" alt="" width="840" height="630" srcset="https://i2.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09917.jpg?w=1000 1000w, https://i2.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09917.jpg?resize=300%2C225 300w, https://i2.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09917.jpg?resize=768%2C576 768w" sizes="(max-width: 709px) 85vw, (max-width: 909px) 67vw, (max-width: 1362px) 62vw, 840px" data-recalc-dims="1" /></a>

Quelques photos du montage final:

<a href="http://stevefuchs.fr/wordpress/2017/08/14/changement-ventilateur-synology-ds2016ii/dsc09918/" rel="attachment wp-att-1835"><img class="alignnone size-large wp-image-1835" src="https://i2.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09918.jpg?resize=840%2C630" alt="" width="840" height="630" srcset="https://i2.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09918.jpg?w=1000 1000w, https://i2.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09918.jpg?resize=300%2C225 300w, https://i2.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09918.jpg?resize=768%2C576 768w" sizes="(max-width: 709px) 85vw, (max-width: 909px) 67vw, (max-width: 1362px) 62vw, 840px" data-recalc-dims="1" /></a>

<a href="http://stevefuchs.fr/wordpress/2017/08/14/changement-ventilateur-synology-ds2016ii/dsc09919/" rel="attachment wp-att-1836"><img class="alignnone size-large wp-image-1836" src="https://i0.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09919.jpg?resize=750%2C1000" alt="" width="750" height="1000" srcset="https://i0.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09919.jpg?w=750 750w, https://i0.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/08/DSC09919.jpg?resize=225%2C300 225w" sizes="(max-width: 709px) 85vw, (max-width: 909px) 67vw, (max-width: 984px) 61vw, (max-width: 1362px) 45vw, 600px" data-recalc-dims="1" /></a>

En conclusion, le remplacement du ventilateur d&rsquo;origine du DS216+II par un ventilateur Noctua ne réduit pas au silence son NAS, mais il m&rsquo;a permis de supprimer ce petit claquement désagréable que j&rsquo;entendais. Au démarrage, le NAS fait tout de même des petits claquements qui disparaissent une fois l&rsquo;initialisation terminée. Le changement me convient tout à fait.