---
title: Cheat Sheet / Powershell
author: Steve
layout: post
permalink: /posts/cheat-sheet-powershell/
categories: [Développement]
tags: [PowerShell]
---
# Ajouter une extension à tout les fichiers d'un répertoire

Dans un répertoire, pour ajouter une extension (par exemple .jpg) à tous les fichiers d'un répertoire, on peut utiliser le script ci dessous.

{% highlight PowerShell %}
gci -ex "*.jpg" | ?{!$_.PsIsContainer} | ren -new {$_.name + ".jpg"}
{% endhighlight %}