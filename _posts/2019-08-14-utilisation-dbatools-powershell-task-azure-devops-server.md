---
title: Utilisation librairie dbatools dans un pipeline Azure DevOps Server
date: 2019-08-14
author: Steve
layout: post
permalink: /2019/08/14/utilisation-dbatools-powershell-task-azure-devops-server/
categories: [Développement]
tags: [Azure DevOps Server, PowerShell]
---
# Description du problème

L'utilisation des fonctions de la librairie dbatools (Restore-DbaDatabase par exemple) dans une tâche PowerShell dans un pipeline de build Azure DevOps Server retourne une erreur "The term 'xxx' is not recognized as the name of a cmdlet, function, script file, or operable program".

La librairie est pourtant installé sur l'ordinateur de l'agent.

La commande que je veux exécuter dans une tâche PowerShell d'un build:

{% highlight PowerShell %}
Restore-DbaDatabase -SqlInstance 'db.xxx.xxx,11000' -DatabaseName XXX -Path '\\...\XXX_Refresh.bak' -DestinationFilePrefix DEV_ -WithReplace
{% endhighlight %}

Le log retourné (la tâche a finie en erreur)

{% highlight text %}
2019-08-14T10:05:29.6137215Z ##[section]Starting: restore database AFS DEV from prod
2019-08-14T10:05:29.6140173Z ==============================================================================
2019-08-14T10:05:29.6140221Z Task         : PowerShell
2019-08-14T10:05:29.6140250Z Description  : Run a PowerShell script on Windows, macOS, or Linux.
2019-08-14T10:05:29.6140279Z Version      : 2.140.2
2019-08-14T10:05:29.6140308Z Author       : Microsoft Corporation
2019-08-14T10:05:29.6140381Z Help         : [More Information](https://go.microsoft.com/fwlink/?LinkID=613736)
2019-08-14T10:05:29.6140407Z ==============================================================================
2019-08-14T10:05:30.2243645Z Generating script.
2019-08-14T10:05:30.2638292Z ##[command]"C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" -NoLogo -NoProfile -NonInteractive -ExecutionPolicy Unrestricted -Command ". 'D:\DevOpsAgent-DEV\_work\_temp\839121d7-6979-4263-b668-e5ce29c52078.ps1'"
2019-08-14T10:05:31.6888554Z Restore-DbaDatabase : The term 'Restore-DbaDatabase' is not recognized as the name of a cmdlet, function, script file, 
2019-08-14T10:05:31.6888836Z or operable program. Check the spelling of the name, or if a path was included, verify that the path is correct and 
2019-08-14T10:05:31.6888881Z try again.
2019-08-14T10:05:31.6889028Z At D:\DevOpsAgent-DEV\_work\_temp\839121d7-6979-4263-b668-e5ce29c52078.ps1:4 char:1
2019-08-14T10:05:31.6889586Z + Restore-DbaDatabase -SqlInstance "db.xxx.xxx,11000" - ...
2019-08-14T10:05:31.6889869Z + ~~~~~~~~~~~~~~~~~~~
2019-08-14T10:05:31.6890270Z     + CategoryInfo          : ObjectNotFound: (Restore-DbaDatabase:String) [], ParentContainsErrorRecordException
2019-08-14T10:05:31.6890481Z     + FullyQualifiedErrorId : CommandNotFoundException
2019-08-14T10:05:31.6890793Z  
2019-08-14T10:05:31.7398929Z ##[error]PowerShell exited with code '1'.
2019-08-14T10:05:31.7659253Z ##[section]Finishing: restore database XXX from prod
{% endhighlight %}

# Résolution

Il semble que l'exécution d'un tâche PowerShell au niveau d'un agent n'a pas accès à l'ensemble des librairies de l'hôte, car il devrait s'exécuter avec des privilèges avancés.

J'ai modifié la commande du build comme suit pour exécuter la commande sans problème:

{% highlight PowerShell %}
if (Get-Module -ListAvailable -Name dbatools) {
    Write-Host "Module dbatools exists"
} 
else {
    Write-Host "Module dbatools does not exist"
    Install-PackageProvider -Name NuGet -Force -Scope CurrentUser
    Install-Module -Name dbatools -Force -Verbose -Scope CurrentUser
}

Restore-DbaDatabase -SqlInstance 'db.xxx.xxx,11000' -DatabaseName XXX -Path '\\...\XXX_Refresh.bak' -DestinationFilePrefix DEV_ -WithReplace
{% endhighlight %}
