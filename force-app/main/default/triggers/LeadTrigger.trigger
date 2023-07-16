trigger LeadTrigger on Lead (before insert) {
    
    System.debug('Hello Trigger');
    
    for(Lead w: Trigger.new){
        w.Rating ='Cold';
    }

}