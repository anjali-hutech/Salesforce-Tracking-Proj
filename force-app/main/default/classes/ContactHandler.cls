public class ContactHandler {
    
    public static void AfterContactCreate(List<Contact> conList)
    {
       for(Contact con:conList) 
       {
           Contact_Relationship__c conrea=new Contact_Relationship__c();
           conrea.Name=con.LastName;
           conrea.Contact__c=con.Id;
           conrea.Contact_Phone__c=con.Phone;
           conrea.Contact_Email__c=con.Email;
           insert conrea;
       }
    }

}