public class sobjectClass 
{
list<Contact>conlist;    
public void dml()
{
 Account acc=new Account (Name='Alt Communications',Type='Prospect',Phone='9555121667',BillingCity='Noida');
    insert acc;
    ID acctid=acc.Id;
    conlist=new list<Contact> {
        new Contact(FirstName='Maulana',LastName='Md',Salutation='Mr.',Department='Engineering',AccountId=acctid),
        new Contact(FirstName='Najma',LastName='Khan',Salutation='Ms.',Department='Finance',AccountId=acctid),
        new Contact(FirstName='Hasan',LastName='Abdullah',Salutation='Mr.',Department='IT',AccountId=acctid)
            };
     insert conlist;           
    system.debug(conlist);
    system.debug(acc);
    }
    
}