@isTest
public class UpdateAccountTest {

    @isTest
    public static void method()
    {
        Account acc=new Account();
        acc.Name='Accounts6';
        acc.Active__c='No';
        acc.Rating='Cold';
        insert acc;
        
        Contact con=new Contact();
        con.FirstName='Test';
        con.LastName='Test';
        con.AccountId=acc.Id;
        insert con;
        
        UpdateAccounts.updates();
        Account acc1=[select id,Name,Rating,Active__c from Account where Id=:acc.Id];
        system.assertEquals('Hot', acc1.Rating);
        
    }
}