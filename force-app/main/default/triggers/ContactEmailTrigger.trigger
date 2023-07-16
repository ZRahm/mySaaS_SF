trigger ContactEmailTrigger on Contact (after insert) {
    
    if(Trigger.isAfter && Trigger.isInsert){
       ContactEmailTriggerHandler.sendEmailNotification(Trigger.new); 
    }
    

}