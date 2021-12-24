public class addrpos2 
{
    list<Position__c> poslist;
    public void insertpositions()
    {
        poslist=new list<Position__c> {
            new Position__c(Name='ANY',Status__C='Open',Department__C='Sales'),
            new Position__c(Name='BCW',Status__c='New',Department__C='Finance',Salary__C=30000)
        };
            insert poslist;
    }
    public void updatepositions()
    {
        position__c pos=[select name from position__c where name='ANY'];
        pos.Status__c='Closed';
        pos.Salary__c=50000;
        update pos;
    }

}