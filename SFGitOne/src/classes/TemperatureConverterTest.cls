@isTest
public class TemperatureConverterTest {
    
    @isTest static void testWarmTemp(){
        Decimal c=TemperatureConverter.FahrenheitToCelsius(80);
        system.assertEquals(26.66, c);
    }
    
    static testMethod void testFreezingPoitn(){
        Decimal c=TemperatureConverter.FahrenheitToCelsius(32);
        system.assertEquals(0, c);
    }
    
    static testMethod void testBolingPoint(){
        Decimal c= TemperatureConverter.FahrenheitToCelsius(212);
        system.assertEquals(100, c);
    }
    
    @isTest static void testnegativepoint(){
        Decimal c= TemperatureConverter.FahrenheitToCelsius(-21);
        system.assertEquals(-23.33, c);
    }

}