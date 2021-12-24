public class newpos 
{
 public void TestPositionWithRelatedJobApplication()
    {
     position__c p=new position__c(Name='Tester');
        insert p;
        job_application__c j=new job_application__c(Name='JA-TEST',position__c=p.id);
        insert j;
    }
}