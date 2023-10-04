trigger ContactTrigger on Contact (before insert , before update , after insert , after update) {
    
    if(trigger.isAfter && trigger.isinsert)
    {
       system.debug('Contact insert') ; 
       ContactHandler.AfterContactCreate(trigger.new);
    }
    
}