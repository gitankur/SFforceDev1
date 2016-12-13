trigger AccountAddressTrigger on Account (before insert,before update) {
    
    //Account act= new Account();
    for(Account act:Trigger.New){
    if (act.Match_Billing_Address__c){
        //Account act= new Account();
        act.ShippingPostalCode=act.BillingPostalCode;
    }
    }
}