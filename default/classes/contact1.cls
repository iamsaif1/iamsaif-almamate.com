public class contact1 {
    public void deleterelcon(){
        contact conlist=[select id,name,account.name from contact where account.name like '%A%'];
        delete conlist;
    }

}