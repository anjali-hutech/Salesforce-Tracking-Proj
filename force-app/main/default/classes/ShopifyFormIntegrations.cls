public class ShopifyFormIntegrations {
    
  public static void getCustomers(){
        HttpRequest req=new HttpRequest();
        HttpResponse  res=new HttpResponse();
        Http http = new Http();
        req.setMethod('GET');
        req.setHeader('Content-Tyspe','application/json');
        req.setHeader('Accept','application/json');

        req.setEndpoint('https://salesforceintegrationhutech.myshopify.com/apps/handler/enquire');
        req.setHeader('API_Key__c','01f3906fd52773a7b54df0fae47e8eb9');
        req.setHeader('X-Shopify-Access-Token', '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');
        // req.setHeader() 
        res= http.send(req);
        System.debug(res.getBody());
       if(res.getStatusCode() == 200  && res.getbody() != null){
            ShopifyCustomerJSON customerList = ShopifyCustomerJSON.parse(res.getBody());
            List<Account> accList = new List<Account>();
            for (ShopifyCustomerJSON.Customers customer : customerList.customers){
                Account acc = new Account();
                acc.name = customer.first_name + ' ' + customer.last_name;
                acc.Shopify_Id__c = String.valueOf(customer.id);
                acc.Phone = String.valueOf(customer.phone);
                acc.Approval_Status__c='Approved';
                
                
                accList.add(acc);
            }
            if (accList.size() > 0){
                upsert accList Shopify_Id__c;
            }
        }else {
                System.debug(res.getStatusCode());
                System.debug(res.getStatus());
                
            }
    
                // Handle Error
    }
}