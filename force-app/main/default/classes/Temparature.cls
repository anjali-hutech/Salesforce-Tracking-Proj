public class Temparature{
    
    public static Decimal FtoC(Decimal fh)
    {
        Decimal result= ((fh-32)*5)/9 ;
        system.debug(result);
        return result.setScale(2);
        //36.6666
    }
    
    public static Decimal CtoF(Decimal ce)
    {
        Decimal result1=((ce*9)/5)+32;
        return result1.setScale(2);
      
    }

}