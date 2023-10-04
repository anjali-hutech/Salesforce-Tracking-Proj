public with sharing class ShopifyProductsIntegration {
        @future(callout=true)
        public static void getProducts() {
        HttpRequest req = new HttpRequest();
        HttpResponse res = new HttpResponse();
        Http http = new Http();
        
        req.setMethod('GET');
        req.setHeader('Content-Type', 'application/json');
        req.setHeader('Accept', 'application/json');
        req.setEndpoint('https://salesforceintegrationhutech.myshopify.com/admin/api/2023-04/products.json');
        req.setHeader('API_Key__c', '01f3906fd52773a7b54df0fae47e8eb9');
        req.setHeader('X-Shopify-Access-Token', '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');
        
        res = http.send(req);
        
        if (res.getStatusCode() == 200 && res.getBody() != null) {
            ShopifyProduct productData = ShopifyProduct.parse(res.getBody());
            List<Product2> productList = new List<Product2>();
            
            for (ShopifyProduct.Products product : productData.products ) {
                Product2 productObj = new Product2();
                productObj.Name = product.title;
                productObj.Description = product.body_html;
                productObj.IsActive=(product.status == 'active'); 
                if (product.images != null && !product.images.isEmpty()) {
                List<String> imageUrls = new List<String>();
                Integer imageLimit = 3; // Set the desired limit for images per product
                for (Integer j = 0; j < Math.min(imageLimit, product.images.size()); j++) {
                ShopifyProduct.Images image = product.images[j];
                imageUrls.add(image.src);
                }
                 productObj.Shopify_Image_URL__c = String.join(imageUrls, ';');
                }
                
                productList.add(productObj);
            }
            
            if (!productList.isEmpty()) {
                upsert productList;
            }
        } else {
            System.debug(res.getStatusCode());
            System.debug(res.getStatus());
        }
    }
    
    // Inner class to parse JSON response for Shopify products
      
}