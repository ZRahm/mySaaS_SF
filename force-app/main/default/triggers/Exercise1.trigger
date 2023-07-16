trigger Exercise1 on Lead (before insert) {
    
    if(Trigger.isBefore && Trigger.isInsert){
        for(Lead w: Trigger.new){
            if(w.Status == 'Open - Not Contacted'){
                if(w.Rating == 'Warm' || w.Rating == 'Hot'){
                    w.Rating = 'Cold';
                }
            }
        }
    }

}