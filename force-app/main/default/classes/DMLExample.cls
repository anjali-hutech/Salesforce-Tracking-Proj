public class DMLExample {
    public void method1()
    {
        savepoint sp=Database.setSavepoint();
        try
        {
            Account acc=new Account(Name ='DML Method1',Type='Prospectss');
            insert acc;
            system.debug('acc'+acc);
            Contact con=new Contact(lastname='lastname',accountid=acc.Id);
            insert con;
            
       }
           catch(Exception ex)
           {
               Database.rollback(sp);
            system.debug('exception'+ex.getMessage());
           }
           }

     }