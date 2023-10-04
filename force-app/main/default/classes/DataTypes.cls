public class DataTypes {

    public void method1(){
      Account acc=new Account();
        acc.name='datatypes';
        acc.Phone='65432';
        system.debug('Account '+acc);    
    }
    public void method2()
    {
        List<Account> acc1=[select id,name from account];
        system.debug(acc1);
    }
    
    public void method3()
    {
        Map<Account,list<Contact>> acctoCon=New Map<Account,list<Contact>>();
        system.debug(acctoCon);
    }
    
    public void method4()
    {
        List<String> lists1=new List<String>();
        List<String> lists2=new List<String>();

        lists1.add('Aura');
        lists1.add('Apex');
        system.debug('lists1 '+lists1);
        
        lists2.add('VF');
        system.debug('lists2'+lists2);
        
        lists2.addAll(lists1);
        system.debug(lists2);
    }
    
    public void method5()
    {
        Set<String> sets=new Set<String>();
        sets.add('Sets1');
        sets.add('1');
        sets.add('1');
        System.debug(sets);
        sets.add('2');
        system.debug(sets);      
    }
    public void method6()
    {
        Map<Integer,String> maps=new  Map<Integer,String>();
        maps.put(1,'value1');
        maps.put(2,'value2');
        system.debug(maps);
    }
    public void method7()
    {
        Account acc=new Account(Name='Demo3');
        system.debug(acc);
        
    }
    
    public void method8()  
    {
        List<Account> accts=new List<Account>();
        Set<Id> sets=new Set<Id>();
       accts=[select id,name from Account];
        for(Account acc1:accts)
        {
            sets.add(acc1.id);
         
        }
        system.debug(sets);
    }
    
}