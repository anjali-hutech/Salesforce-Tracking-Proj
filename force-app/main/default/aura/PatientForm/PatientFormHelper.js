({
	helperMethod1 : function(component, event, helper) {
		var action= component.get('c.getpicklists');
        action.setCallback(this,function(result){
        var resultValue= result.getReturnValue();
        component.set('v.Blogrp',resultValue);
        });
        $A.enqueueAction(action);
       // alert(component.get('v.Blogrp'));
    
	},
    
    helperMethod2 : function(component, event, helper) {
		var action= component.get('c.getpickList');
        action.setCallback(this,function(result){
        var resultValue= result.getReturnValue();
        component.set('v.gende',resultValue);
        });
        $A.enqueueAction(action);
       // alert(component.get('v.gende'));
	},
      helperMethod3 : function(component, event, helper) {
		var action= component.get('c.getpickList1');
        action.setCallback(this,function(result){
        var resultValue= result.getReturnValue();
        component.set('v.speci',resultValue);
        });
        $A.enqueueAction(action);
       // alert(component.get('v.speci'));
	},
    
      showSuccess : function(component, event, helper) {
        var toastEvent = $A.get("e.force:showToast");
        toastEvent.setParams({
            title : 'Success',
            message: 'This is a success message',
            duration:' 5000',
            key: 'info_alt',
            type: 'success',
            mode: 'pester'
        });
        toastEvent.fire();
    },
    showError : function(component, event, helper) {
        var toastEvent = $A.get("e.force:showToast");
        toastEvent.setParams({
            title : 'Error',
            message:'This is an error message',
            duration:' 5000',
            key: 'info_alt',
            type: 'error',
            mode: 'pester'
        });
        toastEvent.fire();
    },
    
})