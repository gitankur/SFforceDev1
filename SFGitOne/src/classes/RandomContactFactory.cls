public Class RandomContactFactory {
    
    public static List<Contact> generateRandomContacts(integer lim,String lName){
        
        List<Contact> con = new List<Contact>();

        for(Integer i=0;i<lim;i++) {
            Contact a = new Contact(FirstName='Test ' + i,lastName=lName);
            con.add(a);
        }        
        return con;
    }
}