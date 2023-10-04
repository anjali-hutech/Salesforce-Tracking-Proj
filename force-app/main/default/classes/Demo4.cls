public class Demo4 {
    public static void Employee(){
    List<Employee__c> emp=[select id,name,Phone_Number__c,Account__r.Phone from Employee__c];
   if(!emp.isEmpty())
    {
        for(Employee__c emps:emp)
        {
            if(emps.Phone_Number__c==null)
            {
                emps.Phone_Number__c=emps.Account__r.Phone;
            }
        }
    }
    if(!emp.isEmpty())
    {
        update emp;
    }     
    }
}