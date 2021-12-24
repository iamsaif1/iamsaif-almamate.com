public class task5 {
    public void addproduct(){
        
        for(integer i=0;i<=10;i++)
        {
            product2 prodt=new product2();
            prodt.name='Product1'+i;
            prodt.Description='Clothes';
            prodt.family='Clothing';
            insert prodt;
        }
    }

}