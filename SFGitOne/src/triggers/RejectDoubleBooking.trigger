trigger RejectDoubleBooking on Session_Speaker__c (before insert,before update) {
    
    List<Id> sessionSpeaker= new List<Id>();
    Map<Id,DateTime> requestedBooking=new Map<Id,DateTime>();
    
    for(Session_Speaker__c newItem: trigger.new){
        sessionSpeaker.add(newItem.Speaker__c);
        requestedBooking.put(newItem.session__c, null);
    }
    
   List<Session__c> related_sessions= [Select Id, name,session_date__c from session__c where id in :requestedBooking.keySet() ];
   
    for(Session__c related_session:related_sessions){
        requestedBooking.put(related_session.Id, related_session.session_date__c);
    }
    
    
    List<Session_Speaker__c> releated_Speakers=[Select Id, Speaker__c,Session__c,session__r.session_date__c 
                                                from Session_Speaker__c where Speaker__c in :sessionSpeaker];
    for(Session_Speaker__c related_session_speaker:trigger.new){
        DateTime bookingtime= requestedBooking.get(related_session_speaker.Session__c);
        for (Session_Speaker__c related_Speaker:releated_Speakers){
            if(related_Speaker.speaker__c==related_session_speaker.Speaker__c && related_Speaker.session__r.Session_Date__c == bookingtime){
                related_session_speaker.addError('The speaker is already booked at that time');
            }
        }
    }
    

}