---
title: Ajouter une extension à tout les fichiers d'un répertoire
date: 2019-08-29
author: Steve
layout: post
permalink: /2019/08/29/ajouter-extension/
categories: [Développement]
tags: [PowerShell]
---
Dans un répertoire, pour ajouter une extension (par exemple .jpg) à tous les fichiers d'un répertoire, on peut utiliser le script ci dessous.

{% highlight PowerShell %}
gci -ex "*.jpg" | ?{!$_.PsIsContainer} | ren -new {$_.name + ".jpg"}
{% endhighlight %}
