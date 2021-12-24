public with sharing class UpdateAccount {
    public UpdateAccount() {
        list<account>acl=[select id,name from account where name='SAD1'];
        for(account a:acl){
            if(a.name=='SAD1'){
                a.name='TestUpdateSAD';
            }
        }
        update acl;

    }
}