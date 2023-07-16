trigger ContactEmailWithTemplate on Contact (after insert) {

    ContactEmailWithTemplateHandler.sendEmailwithTemplate(Trigger.new);
    
}