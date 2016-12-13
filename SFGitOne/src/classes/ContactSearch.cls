public class ContactSearch {
    public static List<Contact> searchForContacts(String lastName,
                                                  String postCode){
                                                      
        List<Contact> con = [select Name FROM contact WHERE LastName=:lastName AND MailingPostalCode=:postCode];
        
     
     return con;                                                 
        
    }

}