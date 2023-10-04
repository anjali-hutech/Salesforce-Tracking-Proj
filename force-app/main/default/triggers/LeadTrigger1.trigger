trigger LeadTrigger1 on Lead (before insert,before update) {
    for(Lead Tri:Trigger.new)
    {
        if(String.isBlank(tri.Rating))
        {
            Tri.Rating='';
        }
            
    }

    
}