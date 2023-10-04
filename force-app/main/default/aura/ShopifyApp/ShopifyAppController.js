({
    init: function(component, event, helper) {
        // Load the ButtonController Apex class
        $A.createComponent(
            "c:ButtonController",
            {},
            function() {}
        );
    },
    
    getCustomers : function(component, event, helper) {
        var action = component.get("c.getCustomers");
        action.setCallback(this, function(response) {
            // Handle the response or perform additional actions as needed
        });
        $A.enqueueAction(action);
    }
})