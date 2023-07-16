trigger LeadTrigger13a on Lead (before update) {
    
    for(Lead w: Trigger.new){
        w.Industry ='Education';
    }

}