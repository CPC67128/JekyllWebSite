---
title: Coller son mot de passe sur un site ne l'autorisant pas
date: 2019-06-26
author: Steve
layout: post
permalink: /2019/06/26/coller-son-mot-de-passe-site-autorisant-pas/
categories: [Hack]
tags: [JavaScript]
---
# Description du problème

Certains sites comme oui.sncf ont cette facheuse politique de ne pas autoriser de faire un coller dans certains champs, comme la confirmation du mot de passe ou de l'email d'inscription.

C'est assez agaçant, et selon moi contre productif d'un point de vue sécurité car la tendance serait alors de choisir un mot de passe simple pour aller vite ou lieu d'utiliser un mot de passe complexe ou long.

# Contournement

Les sites sur lesquels j'ai fait cette manipulation intègre jQuery, donc ceci ne s'applique que dans ce cas de figure, qui reste cependant trés courant.

Voici l'exemple de la manipulation sur le dernier site qui m'a posé un souci: oui.sncf

Pour s'inscrire, il faut saisir son mot de passe, que je génère habituellement via une application, et que je colle ensuite dans les champs. Or sur ce site, je ne peux pas coller le mot de passe dans le champt de confirmation du mot de passe.

![]({{site.baseurl}}/assets/SNAG- 26-06-2019 12.49.59 0000.png)

Il faut alors démarrer le mode développeur / debug (touche F12 sur Chrome), et accéder à la console.

![]({{site.baseurl}}/assets/SNAG- 26-06-2019 12.50.38 0001.png)

Faire un clic droit sur le champ que l'on veut remplir, et choisir "Inspect" sur Chrome.

Ceci vous montre le bout de code HTML correspondant à ce champ.

![]({{site.baseurl}}/assets/SNAG- 26-06-2019 12.51.06 0004.png)

Repérer le champ "id", dans mon cas id=pwdConfirm

Il faut alors se rendre dans la console, et saisir un petit peu de code.

{% highlight javascript %}
$('#pwdConfirm').val('VotreMotDePasse')
{% endhighlight %}

![]({{site.baseurl}}/assets/SNAG- 26-06-2019 12.51.30 0005-1.png)

Le champ se remplit avec la valeur donné (le nouveau mot de passe collé dans la console)

![]({{site.baseurl}}/assets/SNAG- 26-06-2019 12.51.30 0005.png)

Et vous permet de valider le formulaire.

![]({{site.baseurl}}/assets/SNAG- 26-06-2019 12.51.40 0006.png)
