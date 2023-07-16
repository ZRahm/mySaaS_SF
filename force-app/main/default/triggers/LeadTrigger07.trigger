trigger LeadTrigger07 on Lead (before update) {
    
    if(Trigger.isBefore && Trigger.isUpdate){
        for(Lead w: Trigger.new){
            System.debug('New Lead LastName: ' + w.LastName);
            System.debug('Old LastName of the Lead is ' + Trigger.oldMap.get(w.Id).LastName);
        }
    }

}