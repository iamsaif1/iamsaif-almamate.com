trigger PositionDeletion on Position__c (before delete) 
{
 for (position__c p:[select id,name from position__c where id IN (select Position__c from job_application__c) and id IN:trigger.old])
 {
     trigger.oldmap.get(p.id).adderror('Cannot Delete Position With Related Job Application');
 }
     }