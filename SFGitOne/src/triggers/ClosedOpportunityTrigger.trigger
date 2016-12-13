trigger ClosedOpportunityTrigger on Opportunity (after insert,after update) {
    List<Task> tsk= new List<task>();
    for(Opportunity opt: [Select stageName from opportunity where id in
                         :Trigger.New]){
        if(opt.StageName =='Closed Won'){
           tsk.add(new Task(subject='Follow Up Test Task',whatId=opt.Id));                        
        }
                             
    }
    if(tsk.size() > 0){
        insert tsk;
    }
}