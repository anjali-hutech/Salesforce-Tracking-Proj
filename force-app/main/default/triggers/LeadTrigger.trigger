trigger LeadTrigger on Lead (before insert,before update,After update) {
   
    Switch on Trigger.operationType
{
        when BEFORE_INSERT
        {
              for(Lead led:Trigger.new)
        {
      //if(String.isBlank(led.LeadSource)) 
       if(Trigger.isBefore  && (String.isBlank(led.LeadSource)))
       {
          led.LeadSource='Other';
       }
       if(String.isBlank(led.Industry))
       {
           led.Industry.addError('Industry is necessary field');
       }
        }
        }
    when BEFORE_UPDATE{
           for(Lead led:Trigger.new)
        {
       {
             if(Trigger.isBefore  && (String.isBlank(led.LeadSource)) )
      {
          led.LeadSource='Other';
      }
       if((led.Status == 'Closed - Converted' || led.Status == 'Closed - Not Converted') && Trigger.oldMap.get(led.Id).Status == 'Open - Not Contacted'){
            led.Status.addError('You cannot directly close an open lead record');
       }  
       }}}
}}