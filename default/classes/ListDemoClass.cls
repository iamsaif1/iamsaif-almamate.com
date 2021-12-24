public class ListDemoClass 
{
 public void addstring()
 {
     list<string> colors=new list<string>{'Black','White','Pink'};
         colors.add('Red');
     colors.add('Green');
     colors.add('Yellow');
     colors.add('Violet');
     for(integer i=0;i<colors.size();i++)
     {
         system.debug(colors[i]);
         }
     system.debug(colors);
 }
}