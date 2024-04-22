trigger ContractTrigger on Contract (before insert, before update, before delete, after insert, after update,after delete, after undelete ) {

    if(Trigger.isBefore){
        if(Trigger.isInsert){
            
        }
        if(Trigger.isUpdate){
            ContractTriggerHandler.inactiveCons(Trigger.new);
        }
        if(Trigger.isDelete){
            
        }
    }
    
    if(Trigger.isAfter){
        if(Trigger.isInsert){
            
        }
        if(Trigger.isUpdate){
            ContractTriggerHandler.inactiveCons(Trigger.new);
        }
        if(Trigger.isDelete){
            
        }
        if(Trigger.isUndelete){
            
        }
    }

}