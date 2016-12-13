@isTest
public class TestRestrictContactByName {
    @isTest static void InvalidNameContactInsert(){
        Contact con= new Contact(firstName='Ankur',
                                lastName='INVALIDNAME',phone='2332233333',
                                email='invalid@asdf.com');
        Database.SaveResult result=Database.insert(con);
        
       System.assert(!result.isSuccess());
       system.assertEquals('The Last Name INVALIDNAME is not allowed for DML',
                           result.getErrors()[0].getMessage());
    }
       @isTest static void InvalidNameContactUpdate(){
        Contact con= new Contact(firstName='Ankur',
                                lastName='INVALIDNAME',phone='2332233333',
                                email='invalid@asdf.com');
          Id conId=con.Id;
        Database.SaveResult result=Database.update(con);
        
       System.assert(!result.isSuccess());
       system.assertEquals('The Last Name INVALIDNAME is not allowed for DML',
                           result.getErrors()[0].getMessage());
    }

}