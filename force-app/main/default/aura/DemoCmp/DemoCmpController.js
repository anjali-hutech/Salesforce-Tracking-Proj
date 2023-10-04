({
	  doinit : function(component, event, helper) {
		component.set("v.message","Button1 initialize");
        component.set("v.message1","Button2 initialize") 
	},
    
    
    handleClick : function(component, event, helper) {
		component.set("v.message" ,event.getSource().get("v.label"));
	},
    
    anotherhandleClick: function(component, event, helper) {
		component.set("v.message1","Button Clicked1");
	}
})