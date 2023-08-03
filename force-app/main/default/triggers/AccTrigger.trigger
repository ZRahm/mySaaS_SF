trigger AccTrigger on Account (before insert) {
    
    if(Trigger.isBefore){
        if (Trigger.isInsert){
            AccTriggerHandler.phoneValidation(Trigger.new);
        }
    }

}