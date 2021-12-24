public class multipleinsert 
{ list<position__c> poslist;
public void insertposition()
{
    poslist=new list<position__c>{
        new position__c(name='apx developer',status__c='Open'),
        new position__c(name='jav developer',status__c='New')    
    };
        insert poslist;
}
 list<candidate__c> canlist;
 public void insertcandidates()
 {
     canlist=new list<candidate__c>{
         new candidate__c(Name='Kriti',job_application__c='a046F00001gvmL9',Age__c='28'),
         new candidate__c(Name='Imran',job_application__c='a046F00001g5CoG',Age__c='25'),
         new candidate__c(Name='Swati',job_application__c='a046F00001g5CoG',Age__c='22'),
         new candidate__c(Name='Zarin',job_application__c='a046F00001hO5F3',Age__c='35'),
         new candidate__c(Name='SMR',job_application__c='a046F00001hO5F3',Age__c='28')    
     };
         insert canlist;
 }
}