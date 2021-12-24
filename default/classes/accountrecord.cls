public class accountrecord{
    public list<account>aclist{get;set;}
    public accountrecord(){
        list<account>aclist=new list<account>();
        aclist=[select name from account limit 20];
    }
}