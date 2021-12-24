public class ListColors 
{
    public void listaddcolors()
    {
        list<string> colors=new list<string>{'Black','White','Pink','Yellow'};
            colors.add('Green');
        	colors.add('Violet');
        	colors.add('Red');
        if(colors.contains('Pink'))
        {
            system.debug('The List Contains Pink And Has Size ' + colors.size());
        }
        else
        {
          system.debug('The List Doesnot Contain Pink');  
        }
        system.debug(colors);
    }
	public void addinteger()
{
    list<integer> listint=new list<integer>{1,2,3};
        listint.add(4);
    	listint.add(5);
    	listint.add(6);
    for(integer i:listint)
    {
    system.debug(listint);
    }
    
    listint.set(0,5);
    {
        system.debug(listint);
    }
}
    public void mapadd()
    {
        /*map<integer,string>empadd=new map<integer,string>();
        empadd.put(1,'Okhla');
        empadd.put(2,'Delhi');
        empadd.put(3,'Noida');*/
        map<integer,string>empadd=new map<integer,string>{1=>'Delhi',2=>'Chandigarh'};
        system.debug('Address For Employee 1: ' + empadd.get(1));
        system.debug('Address For Employee 2: ' +empadd.get(2));
    }
    public void arrayforpositive()
    {
		integer positive=0;
		integer negative=0;
        integer[]arr = new integer[] {12,-73,5,24,-97,10} ;
            for (integer i=0;i<6;i++)
        {
            if (arr[i]>=0)
            {
                positive++;
            }
            else
            {
                negative++;
            }
        }
        system.debug('Total Positive: '+ positive);
        system.debug('Total Negative: '+ negative);
    }
 }