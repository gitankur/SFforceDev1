public class ContactAndLeadSearch {
    
    public static List<List<sObject>> searchContactsAndLeads(String param){        
     List<List<sObject>> list1= [Find :param IN ALL Fields Returning 
                                Contact(Name where firstName=:param OR LastName=:param),
                                Lead(name where firstName=:param OR LastName=:param)];             
        return list1;
    }

}