public class PositionUpdate 
{
public void updateposition()
{
   Position__c pos=[Select Id From Position__c where Name='Apex Developer' limit 1];
    pos.Salary__c=70000;
    pos.Status__c='Open';
    update pos;
}
  list<Position__c> poslist; 
    public void upsertmethod()
    {
     Position__c p= new Position__c( Name='Apex Developer');
        insert p;
        p.Job_Description__c='Full Time Job';
        p.Salary__c=50000;
        p.Status__c='Open';
        Position__c np= new Position__c(Name='HR Manager',Salary__c=45000,Status__c='New');
        poslist=new list<Position__c> {p,np};
            upsert poslist;
        
    }
    public void deletemethod()
    {
        Position__c posdel=[select Name From Position__c where status__c='Closed'];
        delete posdel;
    }
    public void undeletemethod()
    {
      Position__c posundel=[select Name From Position__c where status__c='Closed' ALL ROWS];
        try{
        undelete posundel;
        }
        catch(DMLexception e)
        {
            system.debug('Error Found: ' +e.getMessage());
        }
    }
    public void mergelead()
    {
     Lead masterpos=[select id from Lead where Name='Mohd Sahil' LIMIT 1];
     Lead mergpos=[select id  from Lead where Name='Moh Sahil' LIMIT 1];
        merge masterpos mergpos;
    }
}