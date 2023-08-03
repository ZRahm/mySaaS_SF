public class TemperatureConverter {
    
    public static Decimal FntoCelcConverter(Decimal fh){
        //C = (F-32)*5/9
            Decimal c = (fh - 32)*5/9;
        System.debug(c.setScale(2));
        return c.setScale(2);
       
    }

}