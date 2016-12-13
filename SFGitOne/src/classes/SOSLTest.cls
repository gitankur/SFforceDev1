public class SOSLTest {
    public static void getSOSLTest(){
List<List<sObject>> searchList=[Find 'wingo and SFDC' Returning Account];
       List<Account> act=searchList.get(0);
        //Contact[] con=searchList.get(1);
        
        for(Account ac:act){
            system.debug(ac.Name);
           }
        
      /*  for(Contact c:con){
            system.debug(c.FirstName);
        }*/

    }
}