public class MyDemo2 {

    public static void Demo2()
    {
        List<Contact> con=[select Id,LastName,Phone,Account.Phone from Contact where AccountId !=null];
        if(!con.isEmpty())
        {
            for(Contact conts:con)
            {
                if(conts.Phone == null)
                {
                    conts.Phone=conts.Account.Phone;
                    
                }
            }
          
        }
        if(!con.isEmpty())
        {
            update con;
        }
    }
}