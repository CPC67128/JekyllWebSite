---
id: 1132
title: 'Scripts de backups de mon site web 1&1'
date: 2014-12-22T23:03:35+01:00
author: Steve
layout: post
guid: http://stevefuchs.fr/wordpress/?p=1132
permalink: /2014/12/22/scripts-de-backups-de-mon-site-web-1-and-1/
categories:
  - Développement
tags:
  - Linux
  - Web
---
Script Linux Backup\_1and1\_DB.bash permettant de sauvegarder les bases de données 1&1 en un fichier script qui sera enregistré sur un répertoire /backup a créer avant, puis téléchargé localement :

<pre>#!/bin/bash
HOME_DIR="/home/steve/Sauvegardes/DB"
DATE_DIR=$(date +%Y-%m-%d-%H-%M-%S)

mkdir -p "${HOME_DIR}/${DATE_DIR}"

sshpass -p 'password_hebergement' ssh utilisateur_hebergement@host.onlinehome.fr 'mysqldump -h host_db.db.1and1.com -u utilisateur_db -p nom_base --password=mot_de_passe_db &gt;backup/nom_db.sql'
sshpass -p 'password_hebergement' ssh utilisateur_hebergement@host.onlinehome.fr 'mysqldump -h host_db.db.1and1.com -u utilisateur_db -p nom_base --password=mot_de_passe_db &gt;backup/nom_db.sql'

sshpass -p 'password_hebergement' scp utilisateur_hebergement@host.onlinehome.fr:backup/*.sql ${HOME_DIR}/${DATE_DIR}

sshpass -p 'password_hebergement' ssh utilisateur_hebergement@host.onlinehome.fr 'rm backup/*.sql'
</pre>

Script Linux Backup\_1and1\_FTP.bash permettant de sauvegarder des dossiers localement :

<pre>#!/bin/bash
HOME_DIR="/home/steve/Sauvegardes/FTP"
DATE_DIR=$(date +%Y-%m-%d-%H-%M-%S)

mkdir -p "${HOME_DIR}/${DATE_DIR}"

cd ${HOME_DIR}/${DATE_DIR}

wget -r <a class="external free" href="ftp://host.fr/" rel="nofollow">ftp://host.fr</a> -l20 --ftp-user=utilisateur --ftp-password=password --exclude-directories=dont_backup,dont_backup2
</pre>

&nbsp;