public class class1 
{
 public void checkoddeven()
 {
     integer even=0;
     integer odd=0;
     integer[]arr=new integer[]{1,2,3,4,5,6,7,8,9,10};
     for(integer i=0;i<10;i++)
     {
         if(math.mod(arr[i], 2)==0)
         {
            even++; 
         }       
     else
     {
         odd++;
     }
         
         }
         system.debug('Total Even Numbers In ARRAY: '+even);
     	 system.debug('Total Odd Numbers In ARRAY: '+odd);
     }     
   public void lettercount()
   {
    integer a=0;
       string []name=new string[]{'S','A','I','F','A','L','A','M'};
    for(integer i=0;i<8;i++)
       {
           if(name[i]=='A')
           {
               a++;
           }
        
       } 
		system.debug('Total A In My Name: '+a);       
   }  
    public void tablefor2()
    {
        integer n=2;
        
     for(integer i=1;i<=10;i++)
          system.debug(n+' X '+i + ' = '+n*i);
    }
  public void reversearray()
    {
   	
     integer[]arr =new integer[]{1,2,3,4,5,6,7,8};
      for(integer i=7;i>=0;i--) 
     {
         system.debug(arr[i]);
     } 
    }   
 }