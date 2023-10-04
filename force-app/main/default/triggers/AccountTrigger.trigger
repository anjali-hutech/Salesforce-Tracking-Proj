trigger AccountTrigger on Account (before insert,before update) {
    
 
    if(trigger.isinsert && trigger.isbefore)
    {
      System.debug('trigger new. before insert'+trigger.new);
        
      AccountTriggerHandler.beforeinsert(trigger.new);
      System.debug('before insert trigger');
     }
  
    if(trigger.isbefore && (trigger.isupdate  || trigger.isinsert) && label.isFlag =='True')
    {
       System.debug('trigger new. before update'+trigger.new) ;
       system.debug('custom label  '+label.Website);
       AccountTriggerHandler.beforeupdate(trigger.new);
       System.debug('before update Trigger');  
         
    }
    
    if(trigger.isinsert && trigger.isafter)
    {
       System.debug('After insert trigger');
    }
    
}