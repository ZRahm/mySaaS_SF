@isTest
public class TemperatureConverterTest {

    @isTest
    public static void testWarmTemp(){
        Decimal c = TemperatureConverter.FntoCelcConverter(85);
        System.assertEquals(29.44, c);
    }
     @isTest
    public static void testFreezingTemp(){
        Decimal c = TemperatureConverter.FntoCelcConverter(32);
        System.assertEquals(0, c);
    }
     @isTest
    public static void testBoilingTemp(){
        Decimal c = TemperatureConverter.FntoCelcConverter(212);
        System.assertEquals(100, c);
    }
}