public class abc {
    public account ac{get;set;}
    public abc(ApexPages.StandardController controller){
        
ac=new account();
ac= (Account)controller.getRecord();        
    }
    public PageReference onsave(){
        insert ac;
        PageReference page = new PageReference(ac.id);
ApexPages.AddMessage(new ApexPages.Message(ApexPages.Severity.CONFIRM,'Do You Really Want To Save?'));
        return page;
    }
}