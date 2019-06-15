---
id: 1003
title: 'Gérer des objets de l''AOT'
date: 2014-12-22T14:40:41+01:00
author: Steve
layout: post
guid: http://stevefuchs.fr/wordpress/?p=1003
permalink: /2014/12/22/gerer-des-objets-de-laot/
categories: [Développement]
tags: [AX 2012]
---
Effacer un menu ou modifier les propriétés d&rsquo;un menu (valable pour d&rsquo;autres objets) :

<pre>static void Job15(Args _args)
{
#AOT
TreeNode treeMenu;
TreeNode treeMenuItem;

treeMenu = TreeNode::findNode(#MenusPath + "\\" + "ProductionControl" + "\\...");
treeMenu.AOTdelete();

treeMenuItem = TreeNode::findNode(#MenusPath);
treeMenu = TreeNode::findNode(#MenusPath + "\\" + "ProductionControl" + "\\...");
treeMenu.AOTsetProperties("PROPERTIES\n IsDisplayedInContentArea #" + "Yes" + "\n ENDPROPERTIES\n");

treeMenu.AOTsave();
}
</pre>

Effacer une classe :

<pre>static void Job15(Args _args)
{
#AOT
TreeNode treeNode;
TreeNode treeNodeClass;

treeNode = TreeNode::findNode(#ClassesPath);
treeNodeClass = treeNode.AOTfindChild('...');

if(treeNodeClass)
{
treeNodeClass.AOTdelete();
}
}
</pre>