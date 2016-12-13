global with sharing class HotelRemoter {
    
    @RemoteAction
    global static List<Hotel__c> findAll(){
        return[Select id,name,Location__Latitude__s,Location__Longitude__s from Hotel__c];
    }

}