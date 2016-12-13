public class MyContactListController {
    @AuraEnabled
    public static List<Contact> getContacts(){
        return [Select Id,name,email,title,phone from contact];
        
    }    

}