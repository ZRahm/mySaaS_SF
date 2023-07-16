trigger LeadTrigger03 on Lead (before update) {
    
    for (Lead w: Trigger.new) {
        
        if (String.isBlank(w.Industry)){
            w.Industry ='Technology';
        } else if (w.Industry == 'Finance'){
            if(w.Rating == 'Cold'){
                w.Rating ='Hot';
            }
        }
    }
}