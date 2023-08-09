public class BatchFieldUpdate implements Database.Batchable <sObject>, Schedulable {
    
    public Database.QueryLocator start(Database.BatchableContext bc){
        
        String query = 'SELECT Id, Name FROM Account';
        return Database.getQueryLocator(query);
        
    }
    
    public void execute(Database.BatchableContext bc, List<Account> accList){
        
        for(Account w: accList){
            w.Zari__Active__c = 'Yes';
        }
        update accList;
    }
    
    public void finish (Database.BatchableContext bc){
        
        
    }
 
    public void execute(SchedulableContext context){
        BatchFieldUpdate batchSch = new BatchFieldUpdate();
        Database.executeBatch(batchSch, 100);
    }
}