---
id: 1150
title: Changer le port ApEx Oracle express edition
date: 2011-02-05T22:57:33+01:00
author: Steve
layout: post
guid: http://stevefuchs.fr/wordpress/?p=1150
permalink: /2011/02/05/changer-le-port-apex-oracle-express-edition/
categories:
  - Développement
tags:
  - BDD
  - Oracle
---
Après l’installation d’Oracle XE, la console d’administration web ApEx est installé sur le port 8080. Ce port est également utilisé par d’autres outils comme JBoss par exemple.

Pour changer ce port, la marche à suivre est la suivante :

<pre>C:\&gt;sqlplus
SQL*Plus: Release 10.2.0.1.0 - Production on Mer. Oct. 7 11:52:29 2009
Copyright (c) 1982, 2005, Oracle. All rights reserved.
SQL&gt; connect
Entrez le nom utilisateur : dbaoracle
Entrez le mot de passe :
Connecté.
SQL&gt; select dbms_xdb.gethttpport() from dual;
DBMS_XDB.GETHTTPPORT()
----------------------
8080
</pre>

La commande suivante permet de connaître la liste des ports actuellement utilisés :

<pre>C:\&gt;netstat -an | find "TCP"
TCP 0.0.0.0:25 0.0.0.0:0 LISTENING
TCP 0.0.0.0:80 0.0.0.0:0 LISTENING
TCP 0.0.0.0:135 0.0.0.0:0 LISTENING
TCP 0.0.0.0:443 0.0.0.0:0 LISTENING
TCP 0.0.0.0:445 0.0.0.0:0 LISTENING
TCP 0.0.0.0:1064 0.0.0.0:0 LISTENING
TCP 0.0.0.0:1069 0.0.0.0:0 LISTENING
TCP 0.0.0.0:1433 0.0.0.0:0 LISTENING
TCP 0.0.0.0:1521 0.0.0.0:0 LISTENING
TCP 0.0.0.0:2967 0.0.0.0:0 LISTENING
TCP 0.0.0.0:5800 0.0.0.0:0 LISTENING
TCP 0.0.0.0:5900 0.0.0.0:0 LISTENING
TCP 127.0.0.1:1060 0.0.0.0:0 LISTENING
TCP 127.0.0.1:1087 0.0.0.0:0 LISTENING
TCP 127.0.0.1:1104 127.0.0.1:1105 ESTABLISHED
TCP 127.0.0.1:1105 127.0.0.1:1104 ESTABLISHED
TCP 127.0.0.1:1107 127.0.0.1:5152 FIN_WAIT_2
TCP 127.0.0.1:1108 127.0.0.1:1109 ESTABLISHED
TCP 127.0.0.1:1109 127.0.0.1:1108 ESTABLISHED
TCP 127.0.0.1:5152 0.0.0.0:0 LISTENING
TCP 127.0.0.1:5152 127.0.0.1:1107 CLOSE_WAIT
TCP 127.0.0.1:8080 0.0.0.0:0 LISTENING
...
</pre>

La commande SQL suivante permet de changer le port :

<pre>SQL&gt; exec dbms_xdb.sethttpport(8880);
Procédure PL/SQL terminée avec succès.</pre>