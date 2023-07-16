trigger LeadTrigger02 on Lead (before insert, before update) {
    
    for(Lead w: Trigger.new){
        
        if(String.isBlank(w.Industry)){
            w.Industry = 'Education';
        }
    }

}