trigger AccTrigger on Account (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
    
    if(Trigger.isBefore){
        if (Trigger.isInsert){
            AccTriggerHandler.phoneValidation(Trigger.new);
        }
        if(Trigger.isUpdate){
            
        }
        if(Trigger.isDelete){
            
        }
    }
    
    if(Trigger.isAfter){
        if(Trigger.isInsert){
            
        }
        if(Trigger.isUpdate){
            AccountTriggerHandler2.afterUpdate(Trigger.newMap, Trigger.OldMap);
            
        }
        if(Trigger.isDelete){
            
        }
        if(Trigger.isUndelete){
            
        }
        
    }

}