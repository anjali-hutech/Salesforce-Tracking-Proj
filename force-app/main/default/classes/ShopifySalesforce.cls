public class ShopifySalesforce {
 public static void retrieveShopifyCustomers() {
        // Shopify API credentials
        String apiKey = '01f3906fd52773a7b54df0fae47e8eb9';
        String password = 'Anj@li445';
       // String shopifyEndpoint = 'https://salesforceintegrationhutech.myshopify.com';

        // Create the HTTP request
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://admin.shopify.com/store/salesforceintegrationhutech/');
        request.setMethod('GET');
        request.setHeader('Content-Type', 'application/json');
        request.setHeader('X-Shopify-Access-Token', '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');

        // Send the request and get the response
        HttpResponse response = new Http().send(request);

        // Parse the JSON response
        if (response.getStatusCode() == 200) {
            ShopifyApiResponse apiResponse = (ShopifyApiResponse) JSON.deserialize(response.getBody(), ShopifyApiResponse.class);

            List<ShopifyCustomer> customers = apiResponse.customers;
            for (ShopifyCustomer customer : customers) {
                String firstName = customer.first_name;
                String lastName = customer.last_name;
                String email = customer.email;

                // Create a Salesforce Contact record for each Shopify customer
                createSalesforceContact(firstName, lastName, email);
            }
        } else {
            System.debug('Error retrieving Shopify customers. StatusCode: ' + response.getStatusCode() + ', Body: ' + response.getBody());
        }
    }

    public static void createSalesforceContact(String firstName, String lastName, String email) {
        Contact newContact = new Contact();
        newContact.FirstName = firstName;
        newContact.LastName = lastName;
        newContact.Email = email;

        try {
            insert newContact;
            System.debug('New Contact created: ' + newContact.Id);
        } catch (Exception e) {
            System.debug('Error creating Contact: ' + e.getMessage());
        }
    }

    // Inner class representing the Shopify API response structure
    public class ShopifyApiResponse {
        public List<ShopifyCustomer> customers;
    }

    // Inner class representing the Shopify customer structure
    public class ShopifyCustomer {
        public String first_name;
        public String last_name;
        public String email;
    }
}