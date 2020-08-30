---
title: Domotique / Pilotage de mes volets roulants Somfy IO
date: 2020-08-29
author: Steve
layout: post
permalink: /domotique-pilotage-volets-roulants-somfy-io/
categories: [RasPi-Somfy]
---
# Histoire du projet

L'idée de départ était de pouvoir piloter à distance mes volets roulants Somfy à distance, avec potentiellement l'exécution de scénarios.

Il y a deux protocoles utilisés par Somfy pour les volets roulants : RTS et IO. Mes volets sont des Somfy IO.

La Somfy Box répondais à mon besoin, mais elle était vraiment trop chère. J’ai trouvé des alternatives plus économiques à cette box, mais pour les commandes RTS, et non pour l’IO qui semble fermé.

J'ai donc démarré la réalisation d'un système domotique maison, que j'ai basé sur un Raspberry Pi pour tester cette plateforme et ses fameux ports GPIO.

# Comment s'interfacer avec les volets roulants Somfy IO ?

N'ayant pas trouvé d'interface radio compatible avec le protocole Somfy IO, j'ai pensé m'interfacer directement sur une télécommande compatible.

J’ai donc commandé une télécommande Somfy Telis 1 IO que j'ai configuré avec l'ensemble de mes volets roulants. Je l'ai ensuite désossé avec une perceuse Dremel et des embouts mini-scie et fraiseuse pour enlever la protection plastique des boutons de la télécommande.

![-]({{site.baseurl}}/assets/20151111_160857_R.jpg)

Je n'ai pas désoudé les boutons, car j'ai trouvé des petites pinces de connexion ou mini-grips qui permettent de s'y grefer :

![-]({{site.baseurl}}/assets/DSC04532_R.jpg)

# Comment agir sur les boutons de la télécommande ?

La première option qui m'est venu à l'esprit est d'utiliser des relais connectés aux GPIO pour simuler l’appui sur ces boutons via le Raspberry Pi. J'ai trouvé ensuite une autre solution, plus élégante et économique, en utilisant un octocoupleur.

J'ai fait des tests de la solution avec des LED pour vérifier la viabilité de l'option :

![-]({{site.baseurl}}/wp-content/uploads/2014/08/DSC00131.jpg)

J'utilise l'outil GPIO de Gordon Henderson: [Wiring Pi](http://wiringpi.com/) pour commander les GPIO.

Après le test avec les LED, j'ai connecté les boutons de la télécommande.

![-]({{site.baseurl}}/wp-content/uploads/2015/11/DSC04532_R.jpg)

![-]({{site.baseurl}}/wp-content/uploads/2015/11/DSC04533_R.jpg)

![-]({{site.baseurl}}/wp-content/uploads/2015/11/DSC04665_R.jpg)

![-]({{site.baseurl}}/wp-content/uploads/2017/07/20170719_224307.jpg)

Le tout fonctionne via le Shell. Pour simuler l'appui sur un bouton, j'envoie la valeur 1 sur la sortie correspondante au bouton du GPIO, j'attends 1 secondes (commande shell <sleep 1>) puis j'envoie 0 sur la sortie correspondante.

# Comment piloter les boutons à distance ?

Une interface web m'a semblé le plus judicieux. PHP permet d'exécuter des commandes Shell pour utiliser les GPIO.

J'ai donc démarré un projet d'interface de commande :

![-]({{site.baseurl}}/wp-content/uploads/2015/11/2015-11-29_094745.png)

Que j'ai fait un peu évoluer.

![-]({{site.baseurl}}/wp-content/uploads/2016/12/2016-12-07_231155.png)

![-]({{site.baseurl}}/wp-content/uploads/2016/12/2016-12-07_231237.png)

# Pourquoi ne pas utiliser une plateforme existante ?

Un collègue de travail m'a parlé de [Domoticz](https://domoticz.com/). J'ai testé, et même si je ne trouvais pas l'interface graphique des plus intuitives, Domoticz offre de belles possibilités d'évolutions, et un réel gain de temps comparé à l'écriture complète d'une application maison.

J'ai donc testé, et finalement adopté cette solution.

Je vous conseille de faire un tour sur [EasyDomoticz](https://easydomoticz.com/) en passant.

Voici à quoi a ressemblé mon interface Domoticz :

![-]({{site.baseurl}}/wp-content/uploads/2017/07/2017-07-19_223923.png)

Au fur et à mesure des évolutions du Raspberry Pi, j'ai également testé d'autres systèmes domotiques libres / open source.

Mon choix actuel est [Jeedom](https://www.jeedom.com/fr/). La configuration au niveau de Jeedom s'est faite comme suit :

![-]({{site.baseurl}}/assets/Jeedom_20200830_1.PNG)

![-]({{site.baseurl}}/assets/Jeedom_20200830_2.PNG)

# Pourquoi avoir des piles ?

A la télécommande Somfy Telis 1 IO de mon installation

Les télécommandes Somfy Telis 1 IO utilisent 2 piles 1,5v. J'ai repéré que le Raspberry Pi fournissait sur une de ces broches une alimentation 3,3v.

J'ai connecté cette alimentation aux télécommandes pour supprimer les piles. J'ai lu qu'il y avait une limitation à 500mA, ce qui me parait suffisant.

# Mise en boîte...

Pour rendre l'ensemble un peu plus présentable et transportable, je l'ai empaqueté dans une boîte "ouverte":

![-]({{site.baseurl}}/assets/20200829_113015_R.jpg)

L'idée est de consituer une box domotique 

![-]({{site.baseurl}}/assets/20200829_120923_R.jpg)

Le tout à été mis dans mon armoire réseau :

![-]({{site.baseurl}}/assets/20200829_121256_R.jpg) ![-]({{site.baseurl}}/assets/20200829_121328_R.jpg)