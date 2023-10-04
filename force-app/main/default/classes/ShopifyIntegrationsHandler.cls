public class ShopifyIntegrationsHandler {
      public static void handleAfterInsert(List<Shopify_Form__c> newForms) {
        List<String> customerNames = new List<String>();
        List<String> customerEmails = new List<String>();
        
        // Extract the customer names and emails from the new ShopifyForm__c records
        for (Shopify_Form__c form : newForms) {
            customerNames.add(form.Name);
            customerEmails.add(form.Customer_Email__c);
        }
        
        // Invoke the processFormSubmission method for each form submission
        for (Integer i = 0; i < newForms.size(); i++) {
            String customerName = customerNames[i];
            String customerEmail = customerEmails[i];
            
            ShopifyFormIntegrations.processFormSubmission(customerName, customerEmail);
        }
    }
}