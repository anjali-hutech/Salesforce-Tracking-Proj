public class DMLOperations {
    
    public void method1()
    {
        List<Account> accList=new List<Account>();
        Account acc1=new Account(Name='Dml 4',Phone='654332');
        Account acc2=new Account(Name='Dml 5',Phone='765454');
        accList.add(acc1);
        accList.add(acc2);
        insert accList;
        system.debug('acc1 Id '+ acc1.id);
        system.debug('acc2 '+acc2.id);
    }   
    public void method2() 
    {
        Account acc=new Account(Name='Accounts1',phone='7645433');
        insert acc;
        Contact con=new Contact(FirstName='contact1',LastName='Lastname',AccountId=acc.id);
        insert con;
    }
    
    public void method3()
    {
        Account acc1=[select id,name from Account where Name='Accounts1'];
        System.debug(acc1);
        acc1.Phone='000001';
        update acc1;
  
        
    }

}