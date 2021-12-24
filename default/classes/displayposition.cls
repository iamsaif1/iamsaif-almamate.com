public class displayposition 
{
    public void relatedrecords()
    {
         list<job_application__c> jalist=[select name from job_application__c where position__r.name='apx developer'];
        system.debug(jalist);
    }

}