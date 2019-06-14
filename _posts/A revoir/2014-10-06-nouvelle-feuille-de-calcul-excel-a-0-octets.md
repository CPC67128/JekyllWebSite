---
id: 954
title: Nouvelle feuille de calcul Excel a 0 octets
date: 2014-10-06T14:18:04+01:00
author: Steve
layout: post
guid: http://stevefuchs.fr/wordpress/?p=954
permalink: /2014/10/06/nouvelle-feuille-de-calcul-excel-a-0-octets/
categories:
  - Software
tags:
  - Office
---
Suite à la mise à jour vers Excel 2013, le menu contextuel « Nouveau » > « Feuille de Calcul Microsoft Excel » de Windows crée un fichier de 0 octet qui ne s&rsquo;ouvre pas.

[<img class="alignnone wp-image-955 size-full" src="https://i0.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2014/10/2014-10-06_145850.png?resize=644%2C27" alt="2014-10-06_145850" width="644" height="27" srcset="https://i0.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2014/10/2014-10-06_145850.png?w=644 644w, https://i0.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2014/10/2014-10-06_145850.png?resize=300%2C12 300w" sizes="(max-width: 709px) 85vw, (max-width: 909px) 67vw, (max-width: 984px) 61vw, (max-width: 1362px) 45vw, 600px" data-recalc-dims="1" />](https://i0.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2014/10/2014-10-06_145850.png)

La commande utilise le mauvais modèle.

J&rsquo;ai trouvé un modèle Excel (Nouveau Feuille de calcul Microsoft Excel.xlsx) dans  C:\Users\_<login>_\AppData\Roaming\Microsoft\Templates que j&rsquo;ai copié dans C:\Windows\ShellNew

Pour modifier cela, il faut aller dans la base de registre et modifier la valeur FileName du dossier ShellNew de l&rsquo;extension de fichier .xslx:

[<img class="alignnone wp-image-956" src="https://i1.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2014/10/2014-10-06_144903.png?resize=840%2C527" alt="2014-10-06_144903" width="840" height="527" srcset="https://i1.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2014/10/2014-10-06_144903.png?w=1145 1145w, https://i1.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2014/10/2014-10-06_144903.png?resize=300%2C188 300w, https://i1.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2014/10/2014-10-06_144903.png?resize=1024%2C642 1024w" sizes="(max-width: 709px) 85vw, (max-width: 909px) 67vw, (max-width: 1362px) 62vw, 840px" data-recalc-dims="1" />](https://i1.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2014/10/2014-10-06_144903.png)

Dans mon cas, cette valeur était fausse et après l&rsquo;avoir modifié, la commande fonctionne à nouveau comme prévue:

[<img class="alignnone wp-image-957" src="https://i1.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2014/10/2014-10-06_144909.png?resize=840%2C527" alt="2014-10-06_144909" width="840" height="527" srcset="https://i1.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2014/10/2014-10-06_144909.png?w=1145 1145w, https://i1.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2014/10/2014-10-06_144909.png?resize=300%2C188 300w, https://i1.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2014/10/2014-10-06_144909.png?resize=1024%2C642 1024w" sizes="(max-width: 709px) 85vw, (max-width: 909px) 67vw, (max-width: 1362px) 62vw, 840px" data-recalc-dims="1" />](https://i1.wp.com/stevefuchs.fr/wordpress/wp-content/uploads/2014/10/2014-10-06_144909.png)