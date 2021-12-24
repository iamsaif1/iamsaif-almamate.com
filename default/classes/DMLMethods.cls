public class DMLMethods 
{
list<Position__c>poslist;
    public void insertbymethod()
{
    poslist=new list<Position__c>{
        new Position__c(Name='Sales Executive'),
        new Position__c(Name='Finance Executive'),
        new Position__c(Name='Support Executive'),
        new Position__c(Name='IT Executive'),
        new Position__c(Name='HR Executive'),
            new Position__c()
    };
   Database.SaveResult[] srlist=Database.insert(poslist,False);
    for(database.SaveResult sr:srlist){
        if(sr.isSuccess()){
            system.debug('Succesfully Inserted 5 Position.Position_ID__c: '+sr.getId());
        }
        else{
            for(database.Error err: sr.getErrors()){
                system.debug('The Following Error Occurred');
                system.debug(err.getStatusCode()+ ' : '+err.getMessage());
                system.debug('Position Field That Affected This Error: '+err.getFields());
            }
        }
    }
 }
   public void updateusingmethod()
   {
    /*Position__c pos=new Position__c(Name='Content Writer 1',Status__c='Closed');
      insert pos;
       ID posid=pos.Id;
       Candidate__c cand=new Candidate__c(Name='Nadeem1',Postion__c=posid);
       insert cand;
        pos.Salary__c=70000;
        pos.Status__c='Open';
        update pos;
        Candidate__c queriedcandidate=[select Name From Candidate__c where name='Nadeem1' limit 1];
        queriedcandidate.Name='Updated Name';
        queriedcandidate.Social_Security_Number__c='786123456';
        update queriedcandidate;*/
       /*Position__c queriedposition=[Select id,Name from Position__c where name='Python Developer' limit 1];
       delete queriedposition;*/
       Job_Application__c queriedjob=[select id,name from Job_Application__c where name='SFDC Developer' limit 1 ];
       delete queriedjob;
    }
    
}