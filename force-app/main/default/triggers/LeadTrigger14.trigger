trigger LeadTrigger14 on Lead (after update) {
    
    switch on Trigger.operationType{
        when AFTER_UPDATE{
            
            LeadTrigger14Handler.afterUpdateLead(Trigger.new);
        
        }
    }
    

}