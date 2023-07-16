trigger LeadTrigger04 on Lead (before insert, before update) {
    
    for(Lead w: Trigger.new){
        
        if(String.isEmpty(w.Industry)){
            w.Industry.addError('Industry field cannot be Empty!');
        }
    }

}