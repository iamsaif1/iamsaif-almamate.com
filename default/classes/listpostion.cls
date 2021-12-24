public class listpostion 
{
list<Position__c> poslist;    
public void InsertPositions()
{
    poslist=new list<Position__c>{
        new Position__c(Name='Sales Executive'),
            new Position__c(Name='Support Executive'),
            new Position__c(Name='IT Executive')
    };
    insert poslist;
    system.debug(poslist);
}
}