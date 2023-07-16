trigger LeadTrigger05 on Lead (before delete) {

    if(Trigger.isBefore && Trigger.isDelete){
       for(Lead w: Trigger.old){
        
           if(w.Industry =='Education'){
               w.addError('You cannot Delete a record with Education Industry!');
           }
    }  
    }
   
}