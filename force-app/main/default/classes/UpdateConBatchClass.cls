public class UpdateConBatchClass implements Database.Batchable<sObject> {
    
    public Database.QueryLocator start(Database.BatchableContext bc){
          System.debug('start method is running');
        
        String myQuery = 'SELECT Id, Name, email, phone, Account.Email__c, Account.Phone FROM Contact WHERE AccountId !=null';
        return Database.getQueryLocator(myQuery);
    
      
    }
    
    public void execute(Database.BatchableContext bc, List<Contact> conList){
        
        for(Contact con: conList){
            if(con.Account.Phone != null ){
                con.Phone = con.Account.Phone ;
            } else{
                con.Account.Phone = con.Phone;
            }
            
            if(con.Account.Email__c != null){
                con.Email = con.Account.Email__c;
            } else {
                con.Account.Email__c = con.Email;
            }
        }
        
        update conList;
        System.debug('execute method is running');
        
    }
    
    public void finish(Database.BatchableContext bc){
        
        System.debug('Finish method');
        
    }

}