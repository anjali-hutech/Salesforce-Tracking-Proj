({
    retrieveShopifyData: function(component, event, helper) {
        var action = component.get("c.retrieveShopifyCustomers");
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                console.log("Shopify data retrieved successfully!");
                // Perform any additional logic or handle the response here
            } else {
                console.error("Error retrieving Shopify data: " + response.getError()[0].message);
            }
        });
        $A.enqueueAction(action);
    }
})