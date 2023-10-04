trigger OpportunityTrigger on Opportunity (after update) {
    List<Training__c> projectList = new List<Training__c>();
    List<Opportunity> opList = new List<Opportunity>();
    
    for (Opportunity op : Trigger.new) {
        Opportunity oldOp = Trigger.oldMap.get(op.Id);
        
        if (op.StageName == 'Closed Won' && oldOp.StageName != 'Closed Won') {
            Training__c p = new Training__c();
            p.Name = op.Name;
            // Populate fields as per your logic
            projectList.add(p);
            opList.add(new Opportunity(Id = op.Id)); // Create a new Opportunity record with only the Id
        }
    }
     if (!projectList.isEmpty()) {
        insert projectList;
    }
      if(opList.size()>0)
    {
        delete opList;
    }
}