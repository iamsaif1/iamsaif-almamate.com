public class TemperatureConverter 
{
    public static decimal farenheittocelcius(decimal fh)
    {
     decimal cs=(fh-32)*5/9;
        return cs.setScale(2);
    }
}