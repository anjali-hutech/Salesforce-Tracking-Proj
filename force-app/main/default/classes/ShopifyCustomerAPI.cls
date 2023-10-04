@RestResource(urlMapping='/shopify/webhook/v1/customer')
global class ShopifyCustomerAPI {
  @HttpPost
    global static void doPost(){
        try
        {
            RestRequest req = RestContext.request;
            Blob body = req.requestBody;
            system.debug(JSON.serializePretty(body.toString()));
            String bodyString = body.toString();   
            CustomerRequest dto=CustomerRequest.parse(body.toString());
            
            
            Account act=new Account();
            act.name=dto.first_name;
            act.Phone=dto.phone;
            act.Shopify_Id__c =String.valueOf(dto.id);
            
            if(dto.default_address!=null)
            {
                act.ShippingStreet=dto.default_address.address1+' '+ dto.default_address.address2;
                act.ShippingCity=dto.default_address.city;
                act.ShippingState=dto.default_address.province;
                act.ShippingPostalCode=dto.default_address.zip;
            }
            //Change Record Type Name based on your org
            String gsRecordTypeID = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Person Account').getRecordTypeId();
            act.RecordTypeId=gsRecordTypeID;
            
            insert act;
        }
        catch(Exception ex)
        {
            system.debug('Error'+ ex.getStackTraceString());
          //ApplicationException.logException(ex);
        }
    }
}