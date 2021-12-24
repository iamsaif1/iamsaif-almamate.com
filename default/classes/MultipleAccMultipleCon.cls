public with sharing class MultipleAccMultipleCon {
    public MultipleAccMultipleCon() {
list<account>acclist=new list<account>();
integer i;
for(i=1;i<=5;i++){
    account ac=new account();
    ac.name='SAMIR'+i;
    acclist.add(ac);
} 
insert acclist;
list<contact>conlist=new list<contact>();
for(account a:acclist){
    contact con=new contact();
    con.lastname='AHMAD'+a.name;
    con.accountid=a.id;
    conlist.add(con);
    }
    insert conlist;
}
}