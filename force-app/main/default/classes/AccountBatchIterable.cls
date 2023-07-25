public class AccountBatchIterable implements Database.Batchable <Account> {
    
    public Iterable<Account> start(Database.BatchableContext bc){
        
        List<Account> accList = new List<Account>();
        Account acc = new Account();
        accList.add(acc);
        
        return accList;
    }
    
    public void execute (Database.BatchableContext bc, List <Account> accList){
        
        for(Integer i=1; i<201; i++){
            
            Account acc = new Account (Name = 'Iterable Practice Acc '+ i);
            accList.add(acc);
        }
        Database.insert(accList, false);
        
        
    }
    
    public void finish (Database.BatchableContext bc){
         System.debug('Records are updated....');
        
      AsyncApexJob myJob=[SELECT Id, Status, NumberOfErrors, TotalJobItems FROM AsyncApexJob WHERE Id = :bc.getJobId()];
        
        
    }
    
    

}