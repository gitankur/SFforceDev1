global class SendReminderEmail implements Database.Batchable<sObject> { 
    
    global String query;
    global string subject;
    global String body;
    global SendReminderEmail(STring query, string subject,String body ){
    	this.query=query;
    	this.subject=subject;
    	this.body=body;
    }
    global Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator(query);        
    }
    
    global void execute(Database.BatchableContext bc, List<speaker__c> scope){
        for(Speaker__c speaker: scope){
            EmailManager.sendMail(query, subject, body);
        }
        
    }
    
    global void finish(Database.BatchableContext bc){
        
    }
    
   

}