@isTest
public class TestPositionDeletion 
{
    @isTest static void TestPositionWithRelatedJobApplication()
    {
     position__c p=new position__c(Name='Tester');
        insert p;
        job_application__c j=new job_application__c(Name='JA-TEST',position__c=p.id);
        insert j;
        test.startTest();
        database.DeleteResult result=database.delete(p,false);
        test.stopTest();
        //system.assert(!result.isSuccess());
        //system.assert(result.geterrors().size()>0);
        //system.assertEquals('cannot delete position with related job application',result.getErrors()[0].getmessage());
        
    }

}