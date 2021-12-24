public class task3{
    public void addcon(){
        list<account> aclist=new list<account>();
        for(integer i=1;i<=10;i++){
            account acv=new account();
            acv.name='SAT'+i;
            aclist.add(acv);
        }
            insert aclist;
        list<contact>conl=new list<contact>();
        for(account a:aclist)
        {
            contact con=new contact();
            con.lastname='Contact1'+a.name;
            con.AccountId=a.id;
            conl.add(con);
            }
        
            
            
         
        
       
            
        }
        
        
    }