public class OpportunityController {
    
    public static void updateProfile(List<Id> oppId)
    {
     List<Opportunity> opp=[select Id,Amount,Profile__c from Opportunity where Id=:oppId];
    for(Opportunity oppty:opp)
        {
            if(oppty.Amount==null)
            {
                oppty.Profile__c=' ';
            }
            else if(oppty.Amount<10000)
            {
                oppty.Profile__c='Low';
            }
            else if (oppty.Amount>50000)
            {
                oppty.Profile__c='High';
            }
            else
            {
                oppty.Profile__c='Medium';
            }
           update opp; 
        }
    }

}