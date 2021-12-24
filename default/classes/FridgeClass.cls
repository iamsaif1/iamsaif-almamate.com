public class FridgeClass 
{
 public string modelnumber;
 public integer numberinstock;
 public void updatestock(integer justsold)
 {
   numberinstock=numberinstock-justsold;
     system.debug('Model Number: '+modelnumber);
     system.debug('Number In Stock : '+numberinstock);
 }
}