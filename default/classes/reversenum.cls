public class reversenum {
    public void seriesreverse(){
        
        integer num=241254;
        integer var=0;
        while (num!=0);
        {
            integer dg=math.mod(num,10);
            var=var*10 + dg;
            num=num/10;
        }
        system.debug(var);
    }

}