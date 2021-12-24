trigger accountname on Contact (after insert,after delete) 
{
    List<Account> accountlist=new List<Account>();
    if(trigger.isinsert){
        for(contact con:[select lastname,account.name from contact where id in:trigger.new]){
        con.account.name+=con.lastname;
        accountlist.add(con.Account);
        }
    }
        update accountlist;
    if(trigger.isdelete){
        for(contact c:[select lastname,account.name from contact where id in:trigger.old]){
            c.account.name+=c.lastname;
            accountList.add(c.account);
            
        }
        update accountList;
    }
        
    }