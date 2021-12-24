@isTest
public class TemperatureConverterTest 
{
    @isTest static void testWarmTemp(){
        decimal celcius=TemperatureConverter.farenheittocelcius(70);
        system.assertEquals(21.11,celcius);
    }
    @isTest static void testFreezingPoint(){
        decimal celcius=TemperatureConverter.farenheittocelcius(32);
        system.assertEquals(0,celcius);
       
    }    
}