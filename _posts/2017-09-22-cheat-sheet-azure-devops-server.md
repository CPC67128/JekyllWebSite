---
title: Cheat Sheet / Azure DevOps Server
author: Steve
layout: post
guid: http://stevefuchs.fr/wordpress/?p=1995
permalink: /posts/cheat-sheet-azure-devops-server/
categories: [Développement]
tags: [SQL,TFS,Azure DevOps]
---
# Utilisation librairie dbatools dans un pipeline Azure DevOps Server

## Description du problème

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

## Résolution

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

# Vue SQL WorkItemsLatestUsed inexistante avec TFS 2017

Avec TFS 2013.5, j&rsquo;utilisais la vue SQL WorkItemsLatestUsed pour calculer certains indicateurs.

J&rsquo;ai migré en TFS 2017, et cette vue n&rsquo;existe plus. J&rsquo;ai cependant trouvé mon bonheur en utilisant d&rsquo;autres vues:

  * vw\_denorm\_WorkItemCoreLatest: contient les données actuelles des work items, mais des champs sont manquants de l&rsquo;ancienne vue sont manquants
  * vw\_denorm\_WorkItemCustomLatest: contient les données actuelles des autres champs (que j&rsquo;appellerais non standards) des work items, sur le modèle 1 ligne correspond à 1 champ
  * tbl_field: cette table permet de savoir l&rsquo;id d&rsquo;un champ non standard

Pour retrouver un équivalent de l&rsquo;ancienne vue WorkItemsLatestUsed et avoir une table contenant l&rsquo;ensemble de mes work items, j&rsquo;utilise donc dorénavant la requête suivante:

{% highlight sql %}
SELECT Core.[System.Id] as SystemId
,Core.[System.TeamProject] as SystemTeamProject
,Core.[System.ChangedDate] as SystemChangedDate
,Core.[System.CreatedDate] as SystemCreatedDate
,ClosedDate.DateTimeValue as MicrosoftVSTSCommonClosedDate
,OriginalEstimate.FloatValue as MicrosoftVSTSSchedulingOriginalEstimate
,RemainingWork.FloatValue as MicrosoftVSTSSchedulingRemainingWork
,CompletedWork.FloatValue as MicrosoftVSTSSchedulingCompletedWork
,rtrim(left(Core.[System.AssignedTo], charindex('&lt;',Core.[System.AssignedTo])-1)) as SystemAssignedTo
,Core.[System.WorkItemType] as SystemWorkItemType
,Title.TextValue as SystemTitle
,Core.[System.State] as SystemState
FROM [dbo].[vw_denorm_WorkItemCoreLatest] Core
left join [dbo].[vw_denorm_WorkItemCustomLatest] OriginalEstimate on Core.[System.Id] = OriginalEstimate.Id and OriginalEstimate.FieldId = 10021
left join [dbo].[vw_denorm_WorkItemCustomLatest] RemainingWork on Core.[System.Id] = RemainingWork.Id and RemainingWork.FieldId = 10020
left join [dbo].[vw_denorm_WorkItemCustomLatest] CompletedWork on Core.[System.Id] = CompletedWork.Id and CompletedWork.FieldId = 10022
left join [dbo].[vw_denorm_WorkItemCustomLatest] ClosedDate on Core.[System.Id] = ClosedDate.Id and ClosedDate.FieldId = 10009
left join [dbo].[vw_denorm_WorkItemCustomLatest] Title on Core.[System.Id] = Title.Id and Title.FieldId = 1
where Core.[IsDeleted] = 0
{% endhighlight %}