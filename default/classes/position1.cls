public class position1 
{
    list<Position__C>poslist;
public void insertrecord()
  
{
/*Position__c pos=new Position__c(Name='Software Architect',Status__c='New',Department__c='IT'); 
    insert pos;*/
    poslist=new list<Position__C>{
        new Position__C(Name='Apex Developer',Status__c='New',Department__c='IT'),
        new Position__C(Name='C# Developer',Status__c='New',Department__c='IT'),
        new Position__C(Name='Business Analyst',Status__c='New',Department__c='IT')
            };
       insert poslist;         
                
    }
}