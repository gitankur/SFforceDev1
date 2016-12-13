public class OlderAccountsUtility { 
    public static void updateOlderAccounts(){
        Account[] act= [Select Description,name from Account
                       Order BY CreatedDate ASC LIMIT 5 ];
        for(Account a:act){
            a.Description='Heritage Account';
            
        }
        update act;
    }

}