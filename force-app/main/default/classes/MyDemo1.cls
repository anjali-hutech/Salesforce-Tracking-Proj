public class MyDemo1 {
   public static void demo5(){
       
    List<Account> acc=[select id,name ,(select id,LastName from Contacts) from Account where CreatedDate =Today];
    if(!acc.isEmpty())
    {
        for(Account accts:acc)
        {
            accts.Total_Contact__c=accts.Contacts.size();
        }
    }
       if(!acc.isEmpty())
       {
           update acc;
       }
    }
}