public class Updatedemo {
    public static void updateOpp()
    {
        List<Opportunity> opp=[select id,Name ,StageName from Opportunity ];
        if(!opp.isEmpty())
        {
            for(Opportunity oppti:opp)
                {
                   if(oppti.StageName=='Closed Won') 
                   {
                       oppti.Description='Closeds ';
                   }
                }        }
    }

}