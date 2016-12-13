public class EmailManager {
    public static void sendMail(String toAddresses,String subject,String body){
        Messaging.SingleEmailMessage mail= new Messaging.SingleEmailMessage();
        String[] toAddress= new String[]{toAddresses};
        mail.setToAddresses(toAddress);
        mail.setSubject(subject);
        mail.setPlainTextBody(body);
        
        Messaging.sendEmail(new Messaging.SingleEmailMessage[]{mail});
        
    }

}