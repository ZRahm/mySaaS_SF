public class QueueableApexClass implements Queueable {
    
    public void execute(QueueableContext context){
        
        List<Account> accList = new List<Account>();
        
        for(Integer i=1; i<101; i++){
           Account acc= new Account();
            acc.Name = 'Queueable Practice '+i;
            accList.add(acc);
        }
        insert accList;
        System.debug(accList.size());
    }
    
    

}