public With Sharing class Sharing {
    
    public list<account> getaccount()
    {
        list<account> acc=[select id , name from account];
        system.debug('acc'+acc);
          return acc; 
    }
         
}