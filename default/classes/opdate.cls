public class opdate{
    public string qwerty{get;set;}
    public boolean flag{get;set;}
    public opdate(ApexPages.StandardController controller){
        String qwerty =controller.getId();
        opportunity oppvar=[select name,id,closedate from opportunity where id=:qwerty];
        if(oppvar.closedate>=Date.Today() && oppvar.CloseDate<= Date.Today().addDays(4))
        {
            flag=true;
        }
        else{
            flag=false;
        }
}
}