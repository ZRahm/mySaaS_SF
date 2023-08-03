public class UpdateContactAddress implements Database.Batchable <sObject>{
    
    public Database.QueryLocator start(Database.BatchableContext bc){
        
        String query ='SELECT Id, BillingCity, BillingState, (SELECT Id, MailingCity, MailingState FROM Contacts)'+ 
            ' FROM Account WHERE BillingCountry  = \'USA\'';
        
        return Database.getQueryLocator(query);
    }
    
    public void execute (Database.BatchableContext bc, List<Account> accList){
        
        List<Contact> conList = new List<Contact>();
        for(Account acc: accList){
            
            for(Contact con: acc.Contacts){
                con.MailingCity =  acc.BillingCity;
                con.MailingState = acc.BillingState;
                conList.add(con);
            }
            
        }
        update conList;
    }
    
    public void finish(Database.BatchableContext bc){
        
    }

}