public class AccountTriggerHandler2 {
    
    public static void afterUpdate(Map<Id, Account> newAccounts, Map<Id, Account> oldAccounts){
        
        //making sure that the Account Rating is changed first
        Set<Id> accountIds = new Set<Id>();
        for(Account newAcc: newAccounts.values()){//mapName.values() - returns the list of the values of the map
            Account oldAcc = oldAccounts.get(newAcc.Id);//get() to get the single corresponding value from the map whihc is the old version of the account record.
            if(oldAcc.Rating != newAcc.Rating){
                accountIds.add(newAcc.Id); //Ids of changed accounts
            }
            
        }
        if(!accountIds.isEmpty()){
            updateCasePriority(accountIds);
        }
        
    }
    
    //inner class method
    //Since I have the AccountId and account records(both new and old). Now inner class method is needed to make updates on the case obj
    private static void updateCasePriority(set<Id> accountIds){
        List<Case> cases=[SELECT id, Priority, Account.Rating FROM Case
                         WHERE AccountId IN :accountIds];
        for(Case cs: cases){
            if(cs.Account.Rating == 'Hot'){
                cs.Priority = 'High';
            }
             else if(cs.Account.Rating == 'Warm'){
                cs.Priority = 'Medium';
             }else{
                 cs.Priority = 'Low';
             }
            
        }
        update cases;
    }

}