public class task19 {
    public void addpricebook(){
        pricebook2 pb=new pricebook2();
        pb.name='360PriceBook';
        pb.IsActive=true;
        insert pb;
    list<product2> prodt2=new list<product2>();
        for(integer i=1;i<=10;i++){
            
            product2 prt=new product2();
            prt.Name='Prdt'+i;
            prodt2.add(prt);
        }
        insert prodt2;
        list<pricebookentry>pbelist=new list<pricebookentry>();
        for(product2 pr:prodt2){
            pricebookentry p=new pricebookentry(pricebook2id=pb.id,isactive=true,unitprice=5,product2id=pr.id,UseStandardPrice=true);
            pbelist.add(p);
        }
        try{
            
            insert pbelist;
        }
        catch(dmlexception e){
            system.debug('the following exception occrd:'+e.getMessage());
        }
   
    
    }
}