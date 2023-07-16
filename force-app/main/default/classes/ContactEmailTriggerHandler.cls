public class ContactEmailTriggerHandler {
    
    public static void sendEmailNotification(List<Contact> conList){
        
        List<Messaging.Email> emailList = new List<Messaging.Email>();
        
        for(Contact con: conList){
            
            if(con.Email != null){
                
                Messaging.SingleEmailMessage emailMsg= new Messaging.SingleEmailMessage();
                
                String [] toAddress = new String []{con.Email};
                    emailMsg.setToAddresses(toAddress);
                
                String emailSub = 'Welcome ' + con.FirstName + ' !';
                emailMsg.setSubject(emailSub);
                
                String disName = 'Zarina DT';
                emailMsg.setSenderDisplayname(disName);
                
                String content = 'Hi' + con.FirstName + ', <br/> <br/>' + ' Welcome to the Salesforce Ecosystem! <br/> <br/>' +
                    
                    'Study hard in your Salesforce Journey! <br/> <br/>' +
                    'Happy Learning! <br/> <br/>' +
                    'Tank you! <br/> <br/>';
                
                emailMsg.setHtmlBody(content);
                emailList.add(emailMsg);
            }
        }
        Messaging.sendEmail(emailList);
    }

}