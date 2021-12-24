public class update1 
{
 public void updatemethod()
 {
     position__c pos=[select id from position__c where name='ANY' limit 1];
     pos.Name='Any1';
     pos.Type__c='Full Time';
     update pos;
     system.debug('Record Id:' + pos.Id);
 }
}