public class CreateAccountRecords {

    @AuraEnabled
    public static List<String> getpicklists()
    {
        List<String> pkList=new List<String>();
        Map<String,Schema.SObjectType> allObj=Schema.getGlobalDescribe();
     Map<String,Schema.SObjectField> allFlds=allObj.get('Patient__c').getDescribe().fields.getMap();
     List<Schema.PicklistEntry> picklist=allFlds.get('Blood_Group__c').getDescribe().getPicklistValues();
     for(Schema.PicklistEntry pk : picklist){
      pkList.add(pk.getValue());
        }
        system.debug('pkList'+pkList);
        return pkList;
    }
      @AuraEnabled
    public static List<String> getpickList()
    {
        List<String> pkList=new List<String>();
        Map<String,Schema.SObjectType> allObj=Schema.getGlobalDescribe();
     Map<String,Schema.SObjectField> allFlds=allObj.get('Patient__c').getDescribe().fields.getMap();
     List<Schema.PicklistEntry> picklist=allFlds.get('Gender__c').getDescribe().getPicklistValues();
     for(Schema.PicklistEntry pk : picklist){
      pkList.add(pk.getValue());
        }
        system.debug('pkList'+pkList);
        return pkList;
    }
        @AuraEnabled
    public static List<String> getpickList1()
    {
     List<String> pkList=new List<String>();
     Map<String,Schema.SObjectType> allObj=Schema.getGlobalDescribe();
     Map<String,Schema.SObjectField> allFlds=allObj.get('Patient__c').getDescribe().fields.getMap();
     List<Schema.PicklistEntry> picklist=allFlds.get('Specialization__c').getDescribe().getPicklistValues();
     for(Schema.PicklistEntry pk : picklist){
      pkList.add(pk.getValue());
        }
        system.debug('pkList'+pkList);
        return pkList;
    }

     @AuraEnabled
    public static Patient__c savepatient(Patient__c patidetails)
    {
       system.debug('patidetails'+patidetails);
        try{
            insert patidetails;
            return patidetails;
        }
        catch(DmlException e)
        {
           throw new AuraHandledException(e.getDmlMessage(0));
        }
    }
}