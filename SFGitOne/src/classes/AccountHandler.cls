public class AccountHandler {
    public static Account insertNewAccount(String acName){
        Account acct=null;
        try{
            if(acName!=null){
        	 acct= new Account(name=acName); 
            insert acct;
            return acct;
            }
            return null;
           
        }catch(Exception  ex){
           // Account acct= new Account();
            return null;
        }
        
    }
    
}