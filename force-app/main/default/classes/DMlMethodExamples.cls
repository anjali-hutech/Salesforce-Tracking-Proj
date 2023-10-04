public class DMlMethodExamples {
    public static void dmlmethodExample(){
 list<account> acc=new list<account>();
    acc.add(new account(Name='Test account1'));
    acc.add(new account(Name='Test account2'));
    system.debug('acc'+acc);
    system.debug('Account List size'+acc.size());
    } 
}