trigger nosameposition on Position__c (before insert) {
    list<string> name1=new list<string> ();
    for(position__c p1:trigger.new)
        name1.add(p1.name);
    list<position__c> pl=[select name from position__c where name in:name1];
    for(position__c p2:trigger.new)
    {
        for(position__c p3:pl)
        {
            if(p3.name==p2.name)
                p2.name.addError('Same Name');
            p2.addError('Duplicate Records Found');
        }
    }

}