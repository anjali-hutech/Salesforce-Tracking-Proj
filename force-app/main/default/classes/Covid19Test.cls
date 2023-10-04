@ISTest
public class Covid19Test {
    
    @ISTest
    public static void treatmentPatient(){
    Covid19 jaipur=new Covid19(10);
    Integer treated=jaipur.getTreated();
    system.assertEquals(10,treated, 'treated count does not matches');
    Covid19 hyd=new Covid19(101);
    treated=hyd.getTreated();
    system.assertEquals(101,treated, 'treated count does not matches');
    system.assertEquals(111,Covid19.recoveredInCountry,'treatment count not started');
       
        jaipur.getTreated();
        treated=jaipur.getTreated();
        system.assert(treated == 11,'treated count does not matches');
        system.assert(Covid19.recoveredInCountry== 112,'treated count does not matches');
 }
}