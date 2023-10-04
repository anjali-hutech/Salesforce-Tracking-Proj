public class EventUtility {
    public static String eventPriority(String eventStatus )
    {
    String evenPri;
     if(String.isBlank(eventStatus) || eventStatus.length()>2)  
     {
         return null;
        
     }
     if(eventStatus =='CA')  
     {
         evenPri='High';
         system.debug(evenPri);
     }
        else{
             evenPri='Low';
             system.debug(evenPri);      
        }  
        return evenPri;
    }
    

}