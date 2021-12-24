public with sharing class AccountWithContact {
    public AccountWithContact() {
        list<account>aclist=new list<account>();
    aclist=[select id,name,(select id,name from contacts) from account where id IN(select accountid from contact)] ; 

}
}