public class pro1 {
    public void desclist(){
        list<Product2>prod=[select name from product2 where description like '%A%' ];
        system.debug(prod);
    }

}