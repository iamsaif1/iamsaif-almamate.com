public class account45 {
    public void order(){
        
        list<account> ac=new list<account>([select id,name from account order by name asc]);
        system.debug(ac);
    }

}