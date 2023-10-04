public class UpdateAccounts {
    
    public static void updates(){
    List<Account> acc=new List<Account>();
    LIst<Id> ids=new List<Id>();
    for(Contact con :[select Id,Name,Account.Id from Contact where Name like '%test%' AND Account.id!=null])
    {
        if(!ids.contains(con.Account.Id)){
            Account acco=new Account();
            acco.Id=con.Account.Id;
            acco.Active__c='yes';
            acco.Rating='Hot';
            acc.add(acco);
    }
   }
    if(!acc.isEmpty())
    {
        update acc;
    }
        
    }
}