trigger SendConfirmationEmail on Session_Speaker__c (After insert) {
    
    List<Id> sessionSpeakerIds= new List<id>();    
    for(Session_Speaker__c newItem: Trigger.new){
        sessionSpeakerIds.add(newItem.Id);        
    }
    
    List<Session_Speaker__c>  sessionSpeakers=[Select Session__r.name, 
                                              session__r.Session_date__c,
                                              Speaker__r.First_Name__c,
                                              Speaker__r.last_Name__c,
                                              Speaker__r.Email__c 
                                              from session_speaker__c 
                                              where Id in :sessionSpeakerIds];
    
    if(sessionSpeakers.size() > 0){
        Session_Speaker__c sessionSpeaker= sessionSpeakers[0];
        if(sessionSpeaker.Speaker__r.Email__c!=null){
            String address=sessionSpeaker.Speaker__r.Email__c;
            String subject='Speaker Confirmation';
            String body='Dear '+sessionSpeaker.speaker__r.First_Name__c+
                ',\nYour session "'+ sessionSpeaker.session__r.name +'" On ' +sessionSpeaker.session__r.Session_date__c+
                'is confirmed. \n\n'
                + 'Thanks for speaking at the conference!';
            
            EmailManager.sendMail(address, subject, body);
                
        }
        
        
    }

}