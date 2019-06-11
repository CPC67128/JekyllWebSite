---
id: 1991
title: Problème de connexion à TFS depuis Visual Studio 2017
date: 2017-09-20T16:29:29+01:00
author: Steve
layout: post
guid: http://stevefuchs.fr/wordpress/?p=1991
permalink: /2017/09/20/probleme-de-connexion-a-tfs-visual-studio-2017/
categories:
  - Développement
tags:
  - .Net
  - Team Foundation Server
  - Visual Studio
---
Suite à la mise à jour de Microsoft Team Foundation Server vers la version 2017 update 2, j&rsquo;ai voulu utiliser Microsoft Visual Studio .Net 2017 (version 15.3) mais j&rsquo;ai rencontré un problème pour me connecter à TFS.

L&rsquo;interface de connexion de TFS a changé, mais en entrant mon serveur, Visual Studio refusait d&rsquo;aller plus loin et m&rsquo;indiquait « Aucun dépôt disponible. »:

<a href="http://stevefuchs.fr/wordpress/2017/09/20/probleme-de-connexion-a-tfs-depuis-visual-studio-2017__trashed/vs_2017_tfs_connexion/" rel="attachment wp-att-1983"><img class="alignnone size-full wp-image-1983" src="https://i0.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/09/VS_2017_TFS_Connexion.png?resize=450%2C310" alt="" width="450" height="310" srcset="https://i0.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/09/VS_2017_TFS_Connexion.png?w=450 450w, https://i0.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/09/VS_2017_TFS_Connexion.png?resize=300%2C207 300w" sizes="(max-width: 450px) 85vw, 450px" data-recalc-dims="1" /></a>

J&rsquo;ai réussi à passer outre ce problème en utilisant une autre fenêtre de connexion, semblable à celle de Visual Studio 2015, qui se trouve via le menu Fichier > Contrôle de code source > Avancé > Ouvrir à partir du serveur&#8230;

<a href="http://stevefuchs.fr/wordpress/2017/09/20/probleme-de-connexion-a-tfs-depuis-visual-studio-2017__trashed/vs_2017_tfs_source_control/" rel="attachment wp-att-1985"><img class="alignnone wp-image-1985 size-full" src="https://i0.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/09/VS_2017_TFS_Source_Control.png?resize=808%2C388" alt="" width="808" height="388" srcset="https://i0.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/09/VS_2017_TFS_Source_Control.png?w=808 808w, https://i0.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/09/VS_2017_TFS_Source_Control.png?resize=300%2C144 300w, https://i0.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/09/VS_2017_TFS_Source_Control.png?resize=768%2C369 768w" sizes="(max-width: 709px) 85vw, (max-width: 909px) 67vw, (max-width: 984px) 61vw, (max-width: 1362px) 45vw, 600px" data-recalc-dims="1" /></a>

D&rsquo;ici, j&rsquo;ai pu configurer correctement une connexion à un projet, comme cela était le cas en Visual Studio 2015:

<a href="http://stevefuchs.fr/wordpress/2017/09/20/probleme-de-connexion-a-tfs-depuis-visual-studio-2017__trashed/vs_2017_tfs_source_control_detail/" rel="attachment wp-att-1986"><img class="alignnone size-full wp-image-1986" src="https://i2.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/09/VS_2017_TFS_Source_Control_Detail.png?resize=781%2C686" alt="" width="781" height="686" srcset="https://i2.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/09/VS_2017_TFS_Source_Control_Detail.png?w=781 781w, https://i2.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/09/VS_2017_TFS_Source_Control_Detail.png?resize=300%2C264 300w, https://i2.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/09/VS_2017_TFS_Source_Control_Detail.png?resize=768%2C675 768w" sizes="(max-width: 709px) 85vw, (max-width: 909px) 67vw, (max-width: 984px) 61vw, (max-width: 1362px) 45vw, 600px" data-recalc-dims="1" /></a>

&nbsp;

Et j&rsquo;ai enfin pu ouvrir mes projets avec Visual Studio 2017:

<a href="http://stevefuchs.fr/wordpress/2017/09/20/probleme-de-connexion-a-tfs-depuis-visual-studio-2017__trashed/vs_2017_tfs_result/" rel="attachment wp-att-1987"><img class="alignnone size-full wp-image-1987" src="https://i0.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/09/VS_2017_TFS_Result.png?resize=357%2C376" alt="" width="357" height="376" srcset="https://i0.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/09/VS_2017_TFS_Result.png?w=357 357w, https://i0.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/09/VS_2017_TFS_Result.png?resize=285%2C300 285w" sizes="(max-width: 357px) 85vw, 357px" data-recalc-dims="1" /></a>

Je ne sais pas pourquoi j&rsquo;ai rencontré ce problème de connexion à TFS avec la nouvelle interface de Team Explorer, mais l&rsquo;ancienne version via le menu fonctionne parfaitement.

L&rsquo;autre façon de faire qui peut sûrement fonctionner est de passer par l&rsquo;interface Web de TFS. Il y a un lien « Ouvrir avec Visual Studio » qui m&rsquo;a ouvert directement Visual Studio (mais la version 2015, que j&rsquo;ai encore installé à côté de la 2017). Je pense que si Visual Studio 2017 est l&rsquo;environnement par défaut, ou le seul environnement installé, cela permet de récupérer le projet et de configurer la connexion avec TFS.

<a href="http://stevefuchs.fr/wordpress/2017/09/20/probleme-de-connexion-a-tfs-depuis-visual-studio-2017__trashed/vs_2017_tfs_web/" rel="attachment wp-att-1988"><img class="alignnone wp-image-1988" src="https://i0.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/09/VS_2017_TFS_Web.png?resize=840%2C421" alt="" width="840" height="421" srcset="https://i0.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/09/VS_2017_TFS_Web.png?w=1216 1216w, https://i0.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/09/VS_2017_TFS_Web.png?resize=300%2C150 300w, https://i0.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/09/VS_2017_TFS_Web.png?resize=768%2C385 768w, https://i0.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/09/VS_2017_TFS_Web.png?resize=1024%2C513 1024w, https://i0.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2017/09/VS_2017_TFS_Web.png?resize=1200%2C601 1200w" sizes="(max-width: 709px) 85vw, (max-width: 909px) 67vw, (max-width: 1362px) 62vw, 840px" data-recalc-dims="1" /></a>