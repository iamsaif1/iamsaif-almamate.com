trigger defaultentry on Product2 (after insert) {
    list<pricebookentry>pblist=new list<pricebookentry>();
	pricebook2 pb=[select id from pricebook2 where isstandard=true];
    for(product2 pr:trigger.new){
        pricebookentry pbe=new pricebookentry();
        pbe.pricebook2id=pb.id;
        pbe.UnitPrice=1;
        pbe.product2id=pr.id;
        pblist.add(pbe);
        
    }    
    insert pblist;
        }