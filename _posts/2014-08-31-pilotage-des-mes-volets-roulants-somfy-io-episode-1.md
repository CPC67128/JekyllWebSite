---
id: 873
title: Pilotage des mes volets roulants Somfy IO épisode 1
date: 2014-08-31T19:28:25+01:00
author: Steve
layout: post
guid: http://stevefuchs.fr/wordpress/?p=873
permalink: /2014/08/31/pilotage-des-mes-volets-roulants-somfy-io-episode-1/
categories: [RasPi-Somfy]
---
Mon besoin est de pouvoir piloter mes volets roulants Somfy à distance (et idéalement plus tard en fonction de certains scénarios météo).

Il y a à priori deux protocoles utilisés par Somfy : RTS et IO, plus récent. Mes volets sont des Somfy IO.

La Somfy Box répondrais à mon besoin, mais elle est vraiment trop chère. J&rsquo;ai trouvé des alternatives plus économiques à cette box, mais pour le RTS, pas pour l&rsquo;IO.

Je me suis mis en tête d&rsquo;utiliser mon Raspberry PI pour faire cela, suite à la lecture des deux pages ci-dessous:

  * [How To &#8211; Control Sunshades &#8211; Somfy-Telis with Raspberry Pi](http://www.openremote.org/display/docs/OpenRemote+2.0+How+To+-+Control+Sunshades+-+Somfy+with+Raspberry+Pi)
  * [Controleur IP de télécommande VR radio à base de Raspberry](http://www.touteladomotique.com/forum/viewtopic.php?f=21&t=10960)

J&rsquo;ai donc commandé une deuxième télécommande générale afin de récupérer l&rsquo;accès aux 3 boutons de contrôles, et un octocoupleur afin de faire l&rsquo;office de « relais » afin de simuler l&rsquo;appui sur ces boutons via le Raspberry PI.

N&rsquo;ayant reçu que l&rsquo;octocoupleur pour l&rsquo;instant, j&rsquo;ai débuté l&rsquo;implémentation:<figure id="attachment_874" aria-describedby="caption-attachment-874" style="width: 300px" class="wp-caption alignnone">

![-]({{site.baseurl}}/wp-content/uploads/2014/08/DSC00131.jpg)

J&rsquo;ai également démarré un nouveau projet PHP afin d&rsquo;offrir une interface de commande des entrées et sorties du Raspberry PI (présent dans mon GitHub):

![-]({{site.baseurl}}/wp-content/uploads/2014/08/2014-08-31_201955.png)

![-]({{site.baseurl}}/wp-content/uploads/2014/08/2014-08-31_202000.png)

Tout fonctionne bien, il ne reste plus qu&rsquo;à travailler sur la télécommande quand je l&rsquo;aurais reçu.