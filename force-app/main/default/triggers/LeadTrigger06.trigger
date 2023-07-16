trigger LeadTrigger06 on Lead (before insert, before update) {
    
    if(Trigger.isBefore && Trigger.isInsert ){
        for(Lead w: Trigger.new){
            if(String.isBlank(w.Industry)){
                w.Industry='Education';
            }
        }
    }
    
    if(Trigger.isBefore && Trigger.isUpdate){
        for(Lead w: Trigger.new){
            if(String.isBlank(w.Industry)){
                w.Industry='Banking';
            } 
        }
    }
 
}