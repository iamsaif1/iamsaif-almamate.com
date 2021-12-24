trigger DateUpdateTriggerOnJA on Job_Application__c (before insert) {

list<position__c> poslist=[select id,start_date__c,date_closed__c from position__c];
list<position__c> plist=new list<position__c>();
    for(position__c p:poslist)
    {
        for(job_application__c ja:trigger.new)
        {
            if(p.id==ja.Position__c)
            {
                ja.Start_Date__c=p.Start_Date__c;
                ja.End_Date__c=date.valueOf(p.Date_Closed__c);
              
            }
                
        }
    }

}