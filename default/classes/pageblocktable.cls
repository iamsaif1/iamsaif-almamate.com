public class pageblocktable{
    public list<contact>contlist{get;set;}
    public pageblocktable(){
        
       list<contact>contlist=new list<contact>();
            contlist=[select id,firstname,lastname from contact limit 100];
        
    }

}