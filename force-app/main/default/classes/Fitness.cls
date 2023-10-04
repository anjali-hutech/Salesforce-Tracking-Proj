public class Fitness {

    public static Decimal calculateBmi(Decimal weight,Decimal height)
    {
        decimal result=weight/(height*height);
        return result;
    }
    public static Decimal calculatePace(Decimal Distance,Decimal minutes)
    {
        Decimal hr=minutes/60;
        Decimal pace=Distance/hr;
        return pace;
    }
    
}