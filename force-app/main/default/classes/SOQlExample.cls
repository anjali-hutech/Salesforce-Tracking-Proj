public class SOQlExample {
    
    public void example1(){
         system.debug('cpu time before execution'+Limits.getCpuTime());
         system.debug('cpu time before execution queries'+Limits.getQueries());
         system.debug('cpu time before execution'+Limits.getHeapSize());
         system.debug('cpu time before execution'+Limits.getDmlStatements());        
         list<String> strlist=new list<String>{'prospect' ,'Customer - Direct'};
         system.debug('strlist'+strlist);
         list<account> acclist=[select id,name,type from account where Type NOT IN:strlist];
         system.debug(acclist);
         map<id,account> mapacc=new map<id,account>(acclist);
         list<contact> con=[select id ,lastname from contact where AccountId In:mapacc.keyset()];
         system.debug(con);
          system.debug('cpu time before execution'+Limits.getCpuTime());
          system.debug('cpu time before execution queries'+Limits.getQueries());
         system.debug('cpu time before execution'+Limits.getHeapSize());
         system.debug('cpu time before execution'+Limits.getDmlStatements()); 
        
    }
    
    public void example2()
    {
         system.debug('cpu time before execution **'+Limits.getCpuTime());
         system.debug('cpu time before execution queries **'+Limits.getQueries());
         system.debug('cpu time before execution **'+Limits.getHeapSize());
         system.debug('cpu time before execution **'+Limits.getDmlStatements());        
         list<String> strlist=new list<String>{'prospect' ,'Customer - Direct'};
         system.debug('strlist'+strlist);
         list<account> acclist=[select id,name,type from account where Type NOT IN:strlist];
         system.debug(acclist);
         set<id> sets=new set<id>();
         for(account acc : acclist)
         {
         sets.add(acc.id) ; 
         }
        system.debug(sets);
        list<contact> con=[select id ,lastname from contact where AccountId In:sets];
        system.debug(con);
        system.debug(con.size());
      
        system.debug('cpu time before execution ***'+Limits.getCpuTime());
        system.debug('cpu time before execution queries ***'+Limits.getQueries());
        system.debug('cpu time before execution ***'+Limits.getHeapSize());
        system.debug('cpu time before execution **'+Limits.getDmlStatements()); 
        
    
    }
    public void likeMethod(String str)
    {
        String str1='%'+str+'%';
        list<account> acc=[select id ,name from account where name like:str1];
        system.debug(acc);
        list<account> acc1=[select id,name from account WHERE CreatedDate = THIS_QUARTER];
        system.debug(acc1);
    }
}