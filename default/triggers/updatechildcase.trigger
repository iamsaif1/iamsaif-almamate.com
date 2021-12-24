trigger updatechildcase on Case (after update) {
    if(trigger.isafter && trigger.isupdate)
    {
        list<case>childupdate=new list<case>();
            
        for(case ch:[select id,subject,status,parent.status from case])//for-each loop to iterate over cases//
        {
            ch.parent.status=ch.status;
            childupdate.add(ch);
            
        }
        try{
            update childupdate;
        }
        catch(exception e){
            system.debug('Exception Occurred');
        }
        
    }
    }