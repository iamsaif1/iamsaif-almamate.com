public class numb{
    public void rev(){
        
        integer i,revrs=0,dg,nu=2356;
        while(nu!=0)
        {
            dg=math.mod(nu, 10);
            revrs=revrs*10+dg;
            nu=nu/10;
        }
    system.debug('In Reverse Order Is='+revrs);
    }
    

}