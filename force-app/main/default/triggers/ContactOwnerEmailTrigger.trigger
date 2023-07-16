trigger ContactOwnerEmailTrigger on Contact (after insert) {

    if(Trigger.isAfter && Trigger.isInsert) {
         ContactOwnerEmailTriggerHandler.sendEmailToContactOwner(Trigger.new);
    }
   
}