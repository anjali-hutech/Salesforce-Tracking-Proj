public class first {

    public String name;
    public integer myint;
    
    public void getvalue()
    {
       system.debug('get All the values');
        name='anjali';
        myint=123;
        system.debug('String'+name);
        system.debug('myint'+myint);
        
    }
    
    public String getString()
    {
        system.debug('String');
        name='deepa';
        myint=233;
        system.debug('name'+name);
        system.debug('myint'+myint);
        return name;
    }
    
    public static void getstatic()
    {
        system.debug('static');
        system.debug('int');
    }
    
    public static void getWelcome()
    {
        system.debug('werr');
        system.debug('erre');
    }
    
}