public class AccountTriggerHandler {
    
     public static void beforeupdate(List<Account> accList){
        system.debug('acc list '+accList);
        for(Account acc:accList) 
        {
           if(acc.Industry != null)
           {
              acc.Rating='cold';
              acc.Phone='23456789';
              acc.Country__c='India' ;
              acc.Active__c='Yes';
              acc.Website=label.Website;
           }
            if(acc.Approval_Status__c ==null)
            {
                acc.Approval_Status__c.addError(label.Account_Validation);
            }
       }
    }
    public static void beforeinsert(List<Account> acc) 
    {
        for(Account acc1:acc)
        {
            if(acc1.Industry !=null)
            {
                acc1.Phone='9876543';
            }
        }
    }
    

}