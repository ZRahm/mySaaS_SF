trigger LeadTrigger08 on Lead (before delete) {
    if(trigger.isBefore && trigger.isDelete){
        for(Lead w: Trigger.old){
            System.debug('The deleted company name is ' + w.Company);
        }
    }

}