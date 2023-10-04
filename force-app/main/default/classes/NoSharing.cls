public Without Sharing  class NoSharing {
    
    public list<account> getaccounts()
    {
        list<account> accts=[select id ,name from account];
        system.debug(accts);
        return accts;
    }

}