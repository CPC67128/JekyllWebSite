---
id: 1991
title: Problème de connexion à TFS depuis Visual Studio 2017
date: 2017-09-20T16:29:29+01:00
author: Steve
layout: post
guid: http://stevefuchs.fr/wordpress/?p=1991
permalink: /2017/09/20/probleme-de-connexion-a-tfs-visual-studio-2017/
categories: [Développement]
tags: [.Net,TFS, Visual Studio]
---
Suite à la mise à jour de Microsoft Team Foundation Server vers la version 2017 update 2, j&rsquo;ai voulu utiliser Microsoft Visual Studio .Net 2017 (version 15.3) mais j&rsquo;ai rencontré un problème pour me connecter à TFS.

L&rsquo;interface de connexion de TFS a changé, mais en entrant mon serveur, Visual Studio refusait d&rsquo;aller plus loin et m&rsquo;indiquait « Aucun dépôt disponible. »:

![-]({{site.baseurl}}/wp-content/uploads/2017/09/VS_2017_TFS_Connexion.png)

J&rsquo;ai réussi à passer outre ce problème en utilisant une autre fenêtre de connexion, semblable à celle de Visual Studio 2015, qui se trouve via le menu Fichier > Contrôle de code source > Avancé > Ouvrir à partir du serveur&#8230;

![-]({{site.baseurl}}/wp-content/uploads/2017/09/VS_2017_TFS_Source_Control.png)

D&rsquo;ici, j&rsquo;ai pu configurer correctement une connexion à un projet, comme cela était le cas en Visual Studio 2015:

![-]({{site.baseurl}}/wp-content/uploads/2017/09/VS_2017_TFS_Source_Control_Detail.png)

&nbsp;

Et j&rsquo;ai enfin pu ouvrir mes projets avec Visual Studio 2017:

![-]({{site.baseurl}}/wp-content/uploads/2017/09/VS_2017_TFS_Result.png)

Je ne sais pas pourquoi j&rsquo;ai rencontré ce problème de connexion à TFS avec la nouvelle interface de Team Explorer, mais l&rsquo;ancienne version via le menu fonctionne parfaitement.

L&rsquo;autre façon de faire qui peut sûrement fonctionner est de passer par l&rsquo;interface Web de TFS. Il y a un lien « Ouvrir avec Visual Studio » qui m&rsquo;a ouvert directement Visual Studio (mais la version 2015, que j&rsquo;ai encore installé à côté de la 2017). Je pense que si Visual Studio 2017 est l&rsquo;environnement par défaut, ou le seul environnement installé, cela permet de récupérer le projet et de configurer la connexion avec TFS.

![-]({{site.baseurl}}/wp-content/uploads/2017/09/VS_2017_TFS_Web.png)