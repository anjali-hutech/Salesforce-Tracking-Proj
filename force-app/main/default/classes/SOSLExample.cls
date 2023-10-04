public class SOSLExample {

    public static void method1()
    {
        list<List<sObject>> searchList=[find 'Test' In Name Fields RETURNING Account(id,name,type) , Contact(id,name)];
        system.debug('searchList'+searchList);
        for(List<sObject> objList : searchList)
        {
            system.debug('objList'+objList);
        }
    }
}