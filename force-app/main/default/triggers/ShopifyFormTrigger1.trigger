trigger ShopifyFormTrigger1 on Shopify_Form__c (before insert) {
    ShopifyIntegrationsHandler.handleAfterInsert(Trigger.new);
    

}