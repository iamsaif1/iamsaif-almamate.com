public class task15 {
    public void reversename(){
       list<account> listac=new list<account>([select name from account limit 1]);
        for(account ac : listac){
            string b=ac.name;
            string rev=b.reverse();
            system.debug(rev);
        }
    }
    
}