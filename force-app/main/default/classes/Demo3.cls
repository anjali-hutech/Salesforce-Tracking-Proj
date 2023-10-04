public class Demo3{
   
    public static void Updates()
    {
        try{
        List<Account> acc=[select id,name,Total_Salary__c,(select id,Name,Salary__c from Employees__r) from Account where CreatedDate=THIS_YEAR];
        if(!acc.isEmpty())
        {
            for(Account acc1:acc)
            {
                Decimal TotalSal=0;
                for(Employee__c emp:acc1.Employees__r){
                    TotalSal+=  emp.Salary__c;
                }
                acc1.Total_Salary__c=TotalSal;
            }
        }
        if(!acc.isEmpty())
        {
            update acc;
        }
        
    }
    catch(Exception e)
    {
        system.debug('Exception');
    }
    }
}