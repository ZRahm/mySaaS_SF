public class AccTriggerHandler {
    
    public static void phoneValidation(List<Account> acc){
        Map<String, Account> nameMap = new Map<String, Account>();
        for(Account w: acc){
            nameMap.put(w.Name, w);
            
            if(w.Phone == null){
                w.addError('Please verify Errors from the Account Trigger');
                w.Phone.addError('Please fill out the phone field before saving');
            }
        }
        if(nameMap.keySet().size()>0){
            List<Account> accountsName = [SELECT Id, Name FROM Account WHERE Name IN:nameMap.keySet()];
            for(Account w1: accountsName){
                Account currentAcc = nameMap.get(w1.Name);
                if(currentAcc != null){
                    currentAcc.AddError('This is a duplicate Record that have already exist '+ w1.Id);
                }
            }
        }
    }

}