public class task13 {
    public void capital(){
        list<contact>ctlist=new list<contact>();
        ctlist=[select firstname,lastname from contact];
        for(contact c:ctlist){
            string fn=c.firstname.substring(0,1).capitalize()+c.firstname.substring(1);
            string ln=c.lastname.substring(0,1).capitalize()+ c.lastname.substring(1);
            system.debug(fn+' '+ln);
        
        }
       
    }

}