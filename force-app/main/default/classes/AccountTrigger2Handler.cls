public class AccountTrigger2Handler {
    public static void afterUpdate(Map<Id, Account> newAccounts, Map<Id, Account> oldAccounts){
        Set<Id> accountIds = new Set <Id>();
        for(Account newAcc : newAccounts.values()){
           Account oldAcc = oldAccounts.get(newAcc.Id);
            if(oldAcc.Rating != newAcc.Rating){
                accountIds.add(newAcc.Id);
            }
            
            }
       
        }
     public static void updateCasePriority( Set <Id> accountsIds){
                
                List<Case> cases = [SELECT Id, Priority, Account.Rating FROM Case
                                   WHERE AccountId IN:accountsIds];
                
        
    }

}