public class PassValues {

    public void mainvalues()
    {
        String webUrl='www.google.com';
        system.debug(webUrl);
    }
    
    public void method1()
    {
        account acc=new account();
        acc.Name='anjali';
        acc.Phone='906878888';
        system.debug('account'+acc);
        method2(acc,'method 2 value');
    }
    
    public void method2(account acc1,String namestrt)
    {
        system.debug('before'+acc1);
        acc1.Name=namestrt;
        system.debug('acct'+acc1);
        insert acc1;
        method3(namestrt);
    }
    public void method3(String namestrt)
    {
        account acc=[select id,name from account where name=:namestrt];
        system.debug('method 3'+acc);
    }
    
}