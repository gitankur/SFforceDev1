public class SOQLTest {

    public static void insertAccount(){
        Lead lead=New Lead(firstName='Ankur',LastName='Smith',
                               Email='abc@corp.com',Phone='2323323433', 
                              company='abc corp' );
        insert lead;
        Contact con=New Contact(firstName='John',LastName='Smith',
                               Email='abc@corp.com',Phone='2323323433' 
                               );
        insert con;
        
         Contact con2=New Contact(firstName='Andy',LastName='Smith',
                               Email='abc@corp.com',Phone='2323323433' 
                               );
        insert con2;
         Lead lead2=New Lead(firstName='Joe',LastName='Smith',
                               Email='abc@corp.com',Phone='2323323433', 
                               company='abc corp');
        insert lead2;
    }
}