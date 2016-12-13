public class TemperatureConverter {
    public static Decimal FahrenheitToCelsius(Decimal fh){
        Decimal deg= (fh-32)*5/9;
        return deg.setScale(2);
    }

}