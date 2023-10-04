@isTest
public class TemparatureTest {
    
    @isTest
    private static void  WarmTemarature()   {
        Decimal res=Temparature.FtoC(70);
        system.assertEquals(21.11, res);
        
    }
    
    @isTest
    private static void coldTemparature()
    {
        Decimal res1=Temparature.CtoF(36);
        system.assertEquals(96.80, res1);
    }
    
}