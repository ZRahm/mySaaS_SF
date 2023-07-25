public class AccountBatchClass implements Database.Batchable <sObject>, Database.Stateful {
    
    public Integer numOfAccountsToUpdate = 0;
    
    public Database.QueryLocator start(Database.BatchableContext bc){
       
        //String data = 'SELECT Id, Name, Zari__BatchNumOfCons__c, (SELECT Id FROM Contacts)FROM Account';
        
        return Database.getQueryLocator('SELECT Id, Name, Zari__BatchNumOfCons__c, (SELECT Id FROM Contacts)FROM Account');
        
    }
    
    public void execute(Database.BatchableContext bc, List<Account> accList) {
        for(Account w: accList){
            if(w.Contacts != null){
                w.Zari__BatchNumOfCons__c = w.Contacts.size();
                System.debug('Updated Accounts Name: ' + w.Name);
                numOfAccountsToUpdate ++;
            }
                  
        }
        update accList;
        System.debug(numOfAccountsToUpdate);
        
    }
    
    public void finish(Database.BatchableContext bc){
        
  System.debug('Records are updated....');
        
      AsyncApexJob myJob=[SELECT Id, Status, NumberOfErrors, TotalJobItems FROM AsyncApexJob WHERE Id = :bc.getJobId()];
        
    }

}