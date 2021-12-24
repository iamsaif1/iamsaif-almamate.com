public class addingrelaredcontact 
{
public void contactwithaccount()
{
    account acc=new account(Name='SRK');
    insert acc;
    id accid=acc.id;
   list<contact> conlist=new list<contact>{
        new contact(FirstName='QWERTY',LastName='KBD',Department='IT',accountid=accid),
        new contact(FirstName='ZRN',LastName='KHAN',Department='Sales',accountid=accid)
    };
        insert conlist;
}
}