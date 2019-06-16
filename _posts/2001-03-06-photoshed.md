---
id: 1211
title: Photoshed
date: 2001-03-06T21:07:54+01:00
author: Steve
layout: post
guid: http://stevefuchs.fr/wordpress/?page_id=1211
permalink: /2001/03/06/photoshed/
categories: [Développement]
---
Projet Java (Swing), projet scolaire de fin d&rsquo;études du DUT Informatique

Année de réalisation : 2001

La segmentation consiste à retrouver les parties homogènes (même type de couleur, intensité sensiblement la même) et ayant un sens dans une image. Segmenter une image est aussi la première étape vers la compréhension, par un ordinateur, d&rsquo;une image.

Photoshed est un logiciel de traitement d&rsquo;image implémentant l&rsquo;algorithme Watershed, fusion de régions et d&rsquo;autres transformations.

Les traitements disponibles sont :

  * taille de l&rsquo;image
  * atténuation : médian moyen, médian maximal, médian minimal, moyenne, flou
  * accentuation : Sharpen
  * gradient : gradient Sobelien, gradient Roberts, gradient Prewitt, gradient Frei-Chen
  * niveaux : seuillage en entrée, seuillage en sortie, mise à niveau
  * watershed : algorithme automatisé avec H-Minima, algorithme manuel, statistiques
  * fusion

![PhotoShed1](/wp-content/uploads/2015/12/PhotoShed1.jpg)

![PhotoShed2](/wp-content/uploads/2015/12/PhotoShed2.jpg)

![SamplePhotoShed1](/wp-content/uploads/2015/12/SamplePhotoShed1.jpg)

![SamplePhotoShed2](/wp-content/uploads/2015/12/SamplePhotoShed2.jpg)

![SamplePhotoShed3](/wp-content/uploads/2015/12/SamplePhotoShed3.jpg)

![SamplePhotoShed4](/wp-content/uploads/2015/12/SamplePhotoShed4.jpg)

![SamplePhotoShed5](/wp-content/uploads/2015/12/SamplePhotoShed5.jpg)

Téléchargement :

  * Source et exécutable : <a class="external text" href="http://stevefuchs.fr/projects/PhotoShed.zip" rel="nofollow">PhotoShed.zip</a>