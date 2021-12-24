public class EnumClass 
{
    public Enum Color {RED,GREEN,BLUE,BLACK,PURPLE,YELLOW,MAGENTA}
    public void MethodEnum() 
    {
       Color c=Color.RED;
        if(c==Color.GREEN)
        {
            system.debug(c);
        
       }
        else
        {
            system.debug('Not Green.Its Some Other Color');
        }
    }
}