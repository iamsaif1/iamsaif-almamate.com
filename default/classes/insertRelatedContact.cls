public with sharing class insertRelatedContact {
    public insertRelatedContact() {
account acc=new account();
acc.name='newTest';
acc.phone='123567';
insert acc;
id acid=acc.id;
list<contact>conlist=new list<contact>();
contact con1=new contact(lastname='Tera',accountid=acid);
contact con2=new contact(lastname='XYZ',accountid=acid);
conlist.add(con1);
conlist.add(con2);
insert conlist;
    }
}