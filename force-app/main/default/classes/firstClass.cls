public class firstClass {
    
   public String email;
   public String name;
    
    public void data()
    {
        system.debug('welcome');
        email='anjali@gmail.com';
        name='anjali';
        system.debug('email'+email);
        system.debug('anjali'+name);
    }
    public void lists()
    {
        list<String> lis1=new list<String>();
        list<String> lis2=new list<String>();
        list<String> lis3=new list<String>();
        lis1.add('hello');
        lis1.add('Welcome');
        system.debug(lis1);
           
    }
    
    
    
}