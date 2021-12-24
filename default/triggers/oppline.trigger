trigger oppline on Opportunity (before insert,before update) 
{
    for (opportunity o:trigger.new){
        if(o.isclosed==true && o.NumberOfOppLineUp__c==0){
            o.adderror('No Line Items Related To Oportunity');
        }
        
    }
}