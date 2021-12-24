public class abcd {
    public void createpb(){
        pricebook2 pb=new pricebook2(name='360Pricebook');
        insert pb;
        list<product2>prodt=new list<product2>();
        for(integer i=0;i<=10;i++){
            product2 pro=new product2(name='iPhone'+string.valueOF(i));
            prodt.add(pro);
        }
        insert prodt;
            
    }
    

}