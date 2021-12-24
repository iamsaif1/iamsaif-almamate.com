trigger nosamerecords on Account (before insert) {
    list<String> names=new list<String>();
    for(account a1:trigger.new)
        names.add(a1.name);
    list<account> la=[select name from account where name in :names];
    for(account a2:trigger.new)
    {
        for(account a3:la)
        {
            if(a3.name==a2.name)
                a2.name.addError('Account Already Exists');
            a2.addError('duplicate accounts');
        }
    }

}