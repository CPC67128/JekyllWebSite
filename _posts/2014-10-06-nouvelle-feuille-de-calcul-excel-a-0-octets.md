---
id: 954
title: Nouvelle feuille de calcul Excel a 0 octets
date: 2014-10-06T14:18:04+01:00
author: Steve
layout: post
guid: http://stevefuchs.fr/wordpress/?p=954
permalink: /2014/10/06/nouvelle-feuille-de-calcul-excel-a-0-octets/
categories: [Software]
tags: [Office]
---
Suite à la mise à jour vers Excel 2013, le menu contextuel « Nouveau » > « Feuille de Calcul Microsoft Excel » de Windows crée un fichier de 0 octet qui ne s&rsquo;ouvre pas.

![-]({{site.baseurl}}/wp-content/uploads/2014/10/2014-10-06_145850.png)

La commande utilise le mauvais modèle.

J&rsquo;ai trouvé un modèle Excel (Nouveau Feuille de calcul Microsoft Excel.xlsx) dans  C:\Users\_<login>_\AppData\Roaming\Microsoft\Templates que j&rsquo;ai copié dans C:\Windows\ShellNew

Pour modifier cela, il faut aller dans la base de registre et modifier la valeur FileName du dossier ShellNew de l&rsquo;extension de fichier .xslx:

![-]({{site.baseurl}}/wp-content/uploads/2014/10/2014-10-06_144903.png)

Dans mon cas, cette valeur était fausse et après l&rsquo;avoir modifié, la commande fonctionne à nouveau comme prévue:

![-]({{site.baseurl}}/wp-content/uploads/2014/10/2014-10-06_144909.png)