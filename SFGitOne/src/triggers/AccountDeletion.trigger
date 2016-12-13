trigger AccountDeletion on Account(before delete){
    
    for(Account ac: [Select id from account
                    where id IN (select AccountId from opportunity) and
                     id IN :Trigger.old]){
                    Trigger.oldMap.get(ac.ID).addError(
                        'Cannot delete the Accoutn with related opprotunity');
                         
                     }
}