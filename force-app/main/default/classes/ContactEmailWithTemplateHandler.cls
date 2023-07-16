public class ContactEmailWithTemplateHandler {

    
    public static void sendEmailWithTemplate(List <Contact> conList){
        
        
        List<Messaging.SingleEmailMessage> emailMessage = new List<Messaging.SingleEmailMessage>();
        
        
        EmailTemplate emailTemplate = 
            [Select Id, Subject, Description, HtmlValue, DeveloperName, Body FROM EmailTemplate WHERE Name = 'ContactInsertAlert'];
        
     Set<Id> ownerIds = new Set<Id>();
    for (Contact con : conList) {
        ownerIds.add(con.OwnerId);
    }

    // Query User object to retrieve owner email addresses
    Map<Id, User> ownerMap = new Map<Id, User>([SELECT Id, Email FROM User WHERE Id IN :ownerIds]);
       
        for(Contact con : conList){
            
           User owner = ownerMap.get(con.OwnerId); 
           
            if(owner.Email != null){
                Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
                
                email.setTargetObjectId(con.Id);
                email.setSenderDisplayName('Company Support');
                email.setTemplateId(emailTemplate.Id);
                email.setToAddresses(new String[] {owner.Email});
                
                
                emailMessage.add(email);
                
            }
        }
        
        Messaging.sendEmail(emailMessage);
    }
}