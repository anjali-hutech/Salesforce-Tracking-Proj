({
	 doInit : function(component, event, helper) {
		alert('do init');
         helper.helperMethod1(component, event, helper);
         helper.helperMethod2(component, event, helper);
         helper.helperMethod3(component, event, helper);

	},
    
   dosave: function(component, event, helper) {
      component.set("v.error",null);
      var action= component.get('c.savepatient');
       action.setParams({
           patidetails :component.get('v.Pati')
       });
        action.setCallback(this,function(result){
            var state=result.getState();
            if(state=="SUCCESS")
            {
            var resultValue = result.getReturnValue();
            alert(JSON.stringify(resultValue));
             var toastEvent = $A.get("e.force:showToast");
                toastEvent.setParams({
                    title : 'Success',
                    message: resultValue.Name,
                    duration:' 5000',
                    key: 'info_alt',
                    type: 'success',
                    mode: 'pester'
                });
                toastEvent.fire();
            }
            else if(state=="ERROR")
            {
            var errors=result.getError();
            var toastEvent = $A.get("e.force:showToast");
             toastEvent.setParams({
            title : 'Error',
            message: errors[0].message,
            duration:' 5000',
            key: 'info_alt',
            type: 'error',
            mode: 'pester'
        });
        toastEvent.fire();
            }  
        });
        $A.enqueueAction(action);
   }
})