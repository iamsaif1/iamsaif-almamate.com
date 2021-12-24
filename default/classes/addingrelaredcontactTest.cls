@istest
public class addingrelaredcontactTest {
    @istest static void contactwithaccount(){
        test.startTest();
        account acc= new account(name='XYZ');
        insert acc;
        test.stopTest();
        id acid=acc.id;
        test.startTest();
        contact ct=new contact(lastname='IAM',accountid=acid);
        insert ct;
        test.stopTest();
        
        
        
    }
    

}