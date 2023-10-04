@isTest
public class EventUtilityTest {

    @isTest
    public static void Test1()
    {
        String res=EventUtility.eventPriority('low');
        system.assertEquals(null, res);
    }
    
     @isTest
    public static void Test2()
    {
        String res1=EventUtility.eventPriority('CA');
        system.assertEquals('High', res1);
        
    }
     @isTest
    public static void Test3()
    {
        String res2=EventUtility.eventPriority('OK');
        system.assertEquals('Low', res2);
    }
    
}