public class SOQL2 {
    
    public static void myQuery(){
         List <Contact> myList = [SELECT Account.Name, Account.Rating, 
    		Contact.Name, Contact.Department, Contact.Title,
(SELECT CaseNumber, Subject FROM Cases)
FROM Contact];
        System.debug(myList);
        
        for (Contact w: myList){
        System.debug(w);
    }
   
        for(Contact w: myList){
            System.debug('Account Name will be: ' + w.Account.Name+ '- Account Rating is: ' + w.Account.Rating);
        }
        
        for(Contact w: myList){
            
            for(Case k: w.Cases){
                System.debug('Case Number: '+ k.CaseNumber +' and '+'Case Subject is: '+ k.Subject);
            }
            
        }
    
}
    }