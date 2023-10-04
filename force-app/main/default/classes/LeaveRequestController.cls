public class LeaveRequestController {
    
    @AuraEnabled(cacheable=true)
    public static List<LeaveRequest__c> getMyLeaves()
    {
    try{
        List<LeaveRequest__c> myLeaves=new List<LeaveRequest__c>();
        myLeaves=[SELECT Id,Name,	From_Date__c,	Manager_Comment__c,	Reason__c,	Status__c,To_Date__c from LeaveRequest__c where user__c=:userInfo.getUserId() ORDER By CreatedDate DESC];
        return myLeaves;
    }
    catch(Exception e)
    {
        throw new AuraHandledException(e.getMessage());
    }
    }

       
    @AuraEnabled(cacheable=true)
    public static List<LeaveRequest__c> getLeaveRequest()
    {
    try{
        List<LeaveRequest__c> myLeaves =new List<LeaveRequest__c>();
        myLeaves=[SELECT Id,Name,	From_Date__c,	Manager_Comment__c,	Reason__c,	Status__c,To_Date__c,User__r.ManagerId,User__r.Name from LeaveRequest__c where User__r.ManagerId=:userInfo.getUserId() ORDER By CreatedDate DESC];
        return myLeaves;
    }
    catch(Exception e)
    {
        throw new AuraHandledException(e.getMessage());
    }
   }
}