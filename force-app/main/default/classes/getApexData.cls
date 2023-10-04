public class getApexData {

      @AuraEnabled(Cacheable=true)
     public static List<Contact> getContactData()
      {
        return [SELECT Name from Contact order by createdDate Limit 10];
      }
}