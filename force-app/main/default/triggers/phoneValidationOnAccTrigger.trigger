trigger phoneValidationOnAccTrigger on Account (before insert) {
    
    if(Trigger.isBefore && Trigger.isInsert){
        PhoneValidationOnAccTriggerHandler.validatePhoneField(Trigger.new); 
    }
   

}