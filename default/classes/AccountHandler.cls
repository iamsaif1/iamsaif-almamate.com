public class AccountHandler {
    public Static void  insertAccount(integer i)
    {
        integer n=1;
        list<account>addAccounts=new list<account>();
        while(n<=i){
            account acc=new account();
            acc.Name='Acme Inc'+n;
            acc.AccountNumber='A000'+n;
            addAccounts.add(acc);
            n=n+1;
            }
        try{
        insert addAccounts;
            }
        catch(exception e){
            
        }
        
        system.debug(addAccounts);
    }

}