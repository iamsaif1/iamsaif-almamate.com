trigger deletetriggerforpositionrelated on Position__c (before delete) 
{
list<Job_Application__c> ja=[select position__c from Job_Application__c where position__c in:trigger.old];
    delete ja;
}