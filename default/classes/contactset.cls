public class contactset{
    public list<contact>list1{get;set;}
    public contactset(apexpages.StandardSetController controller){
        controller.setPageSize(10);
        list1=new list<contact>();
        list1=[select firstname,lastname from contact limit 200];
        
    }

}