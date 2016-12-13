@isTest
private class TestRejectDoubleBooking {
    @isTest static void TestSingleBooking(){
        
        Datetime now=System.now();
        
        Speaker__c speaker= new Speaker__c(First_Name__c='Ankur', Last_Name__c='Sri3',Email__c='funnyankur@gmail.com');
        insert speaker;        
        Session__c session= new Session__c(Name='Introduction to Java Script', session_date__c=now);        
        insert session;
        
        Session_Speaker__c sessionSpeaker= new Session_Speaker__c(session__c=session.Id, speaker__c=speaker.Id);
        
        //insert sessionSpeaker;
        Database.SaveResult result= Database.insert(sessionSpeaker);
        
        System.assert(result.isSuccess());
    }
     @isTest static void TestDubleBooking(){
        
        Datetime now=System.now();
        
        Speaker__c speaker= new Speaker__c(First_Name__c='Ankur', Last_Name__c='Sri3',Email__c='funnyankur@gmail.com');
        insert speaker;        
        Session__c session= new Session__c(Name='Introduction to Java Script', session_date__c=now);        
        insert session;
         
         Session__c session1= new Session__c(Name='Introduction to Java Script1', session_date__c=now);        
        insert session1;
        
        Session_Speaker__c sessionSpeaker= new Session_Speaker__c(session__c=session.Id, speaker__c=speaker.Id);
         insert sessionSpeaker;
         Session_Speaker__c sessionSpeaker1= new Session_Speaker__c(session__c=session1.Id, speaker__c=speaker.Id);
        
        Database.SaveResult result= Database.insert(sessionSpeaker1);
        
        System.assert(!result.isSuccess());
    }

}