public class SOQL3 {
    
    public static void myMethod(){
         List <Contact> myConts =[SELECT Account.Name, Account.Rating, Account.Industry,
        Contact.Name, Contact.Department, Contact.Title,
        (SELECT Name, ContactId, Amount FROM Opportunities)
        FROM Contact];
        
        System.debug(myConts);
        
        for(Contact w: myConts){
            System.debug(w + 'Account names are: ' + w.Account.Name + ' and '+ w.Account.Rating + 'and ' + w.Account.Industry);
        }
        
       
        for (Contact w: myConts){
            for(Opportunity k: w.Opportunities){
                
                System.debug('Opportunity Name: ' + k.Name + '- and Opportunity Amount '+ k.Amount + 
                            ' - Contact: '+ k.ContactId);
                
            }
        }
    }
        
       

}