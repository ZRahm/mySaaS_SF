trigger LeadTrigger09 on Lead (after undelete) {
    
    for(Lead w: Trigger.new){
        
        System.debug(w.Company + w.lastName +' :Record is restored!');
    }

}