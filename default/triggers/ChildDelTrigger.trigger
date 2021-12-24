trigger ChildDelTrigger on Position__c (before delete) 
{
list<job_application__c> childlist=[select id,name from job_application__c where position__c IN:trigger.old];
    delete childlist;
}