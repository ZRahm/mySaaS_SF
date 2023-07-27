public class QueueableApexWithParams implements Queueable{
    
    public List<Account> listAccount;
    public QueueableApexWithParams(List<Account> accList){
        this.listAccount = accList;
        
        
    }
    
    public void execute (QueueableContext context){
        
        for(Account acc : listAccount){
            if(acc.Contacts != null){
                acc.Zari__BatchNumOfCons__c = acc.Contacts.size();
            }
            
        }
        
        update listAccount;
        
        ChainedQueueableClass chainedQueue =new ChainedQueueableClass();
        System.enqueueJob(chainedQueue);
    }

}