public with sharing class SpeakerControllerExtension {
    
    public blob picture{get; set;}
    public String errorMessage{get; set;}
    
    private final Speaker__c speaker;
    private ApexPages.StandardController stdController;
    
    public SpeakerControllerExtension(ApexPages.StandardController controller){
        this.speaker = (Speaker__c) controller.getRecord();        
        this.stdController=controller;           
    }
    
    public PageReference save(){
        errorMessage='';
        
        try{
            upsert speaker;
            
            if(picture!=null){
                Attachment attachment = new Attachment();
                attachment.Body=picture;
                attachment.Name= 'speaker '+ speaker.id+'.jpg';
                attachment.ParentId=speaker.Id;
                attachment.ContentType='application/jpg';
                speaker.Picture_Path__c='/servlet/servlet.FileDownload?file='+attachment.Id;
                update speaker;
            }
            return new ApexPages.StandardController(speaker).view();
        }catch(Exception ex){
            errorMessage=ex.getMessage();
            return null;
        }
    }
     
   

}