trigger LeadTrigger01 on Lead (before insert) {
    
    for(Lead w: Trigger.new){
        
        if(String.isBlank(w.LeadSource)){
            w.LeadSource = 'Other';
        }
    }

}