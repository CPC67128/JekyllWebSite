---
id: 1995
title: Vue SQL WorkItemsLatestUsed inexistante avec TFS 2017
date: 2017-09-22T13:33:18+01:00
author: Steve
layout: post
guid: http://stevefuchs.fr/wordpress/?p=1995
permalink: /2017/09/22/vue-sql-workitemslatestused-inexistante-tfs-2017/
categories: [Développement]
tags: [SQL,TFS]
---
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