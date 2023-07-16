trigger LeadTriggerDT15 on Lead (before insert, before update) {
    
    //Example 15: When a lead record is being inserted, and if leadsource is empty, assign 'Other'
    //If industry is empty populate an error message
    
    //When a lead record is being updated, and if lead source is empty, assign 'Web',
    //When a lead record is being updated, Lead Status should not be converted to closed before contacting with the lead!
 
    Switch on Trigger.OperationType{
        
        when BEFORE_INSERT{
            
            LeadTriggerDT15Handler.beforeInsertHandler(Trigger.new);
            
        }
        
        when BEFORE_UPDATE{
            
            LeadTriggerDT15Handler.beforeUpdateHandler(Trigger.new, Trigger.oldMap);
            
        }
    }
    
    
}