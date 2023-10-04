public class AccountController {
    public static List<Account> insertAccount(list<Account> insertToAccount)
    {
        insert  insertToAccount;
        return  insertToAccount;
    }
    public static Account insertAccounts(Account insertToAccounts)
    {
        insert insertToAccounts;
        return insertToAccounts;
    }
    
    public static List<Account> getAllAccounts()
    {
        List<Account> acc=[select Name,phone from Account];
        return acc;
    }
//Updates

}