public class series {
    public void fabinaci()
    {
        integer i=1;
        integer t1=1;
        integer t2=1;
    for(i=1;i<=7;i++)
    {
        integer sum=t1+t2;
        t1=t2;
        t2=sum;
        system.debug(t1 + '+' );
    }
    }
    
}