public class PositionUpsertController 
{
public Position__c pos
{
    get;
    set;
}
    public PositionUpsertController()
    {
        ID id=apexpages.currentpage().getparameters().get('ID');
        pos=(id==null)? New Position__c():[select Name,Status__c,Type__c from position__c where ID=:id];
    }
    public pagereference save()
    {
        upsert pos;
      pagereference pr=new apexpages.standardcontroller(pos).view();
    return pr;
}
}