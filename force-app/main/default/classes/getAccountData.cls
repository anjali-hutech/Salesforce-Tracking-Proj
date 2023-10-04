public class getAccountData {

        @AuraEnabled(Cacheable=true)
        public static List<Account> getData(String name)
        {
            if(name=='')
            {
            return [SELECT Name from Account Limit 5];
            }
            
            String searchKey='%' +name+ '%';
            return [SELECT Name from Account where name like:searchKey];
        }

}