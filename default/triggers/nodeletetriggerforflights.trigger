trigger nodeletetriggerforflights on Flights__c (before delete) 
{
for(flights__c f:[select id from flights__c where id IN (SELECT Flight_Name__c from Book_Ticket__c) and id IN:trigger.old])
{
    trigger.oldmap.get(f.id).adderror('Cannot Delete This Flight');
}
}