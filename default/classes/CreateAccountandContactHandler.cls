public class CreateAccountandContactHandler {
    
    public static void createAccountAndContact(List<Account> accListNew) {
        
        List<Contact> conList = new List<Contact>();      
        for(Account acc :  accListNew) {
            Contact con = new Contact();
            con.lastname='test2';
            con.AccountId=acc.id;
            conList.add(con);
            
        }
        insert conList;
        
        
        
        
        
        
        
    }
    
}