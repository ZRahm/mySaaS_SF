trigger AccountTrigger on Account (after update, before delete) {

    if(Trigger.isAfter && Trigger.isUpdate){
        
        Set<Id> accIds = new Set<Id>();
        for (Account acc : Trigger.new){
            
            if(acc.BillingCity != Trigger.oldMap.get(acc.Id).BillingCity){
                
                accIds.add(acc.Id);
            }
            
            List<Contact> conList = [SELECT Id, MailingCity, Account.BillingCity FROM Contact WHERE AccountId IN: accIds];
            
            for(Contact w : conList){
                
                w.MailingCity = w.Account.BillingCity;
            }
            update conList;
        }
    }
    
    if(Trigger.isBefore && Trigger.isDelete){
        
        Set<Id> accIds = new Set<Id>();
        for (Account acc : Trigger.old){
            accIds.add(acc.Id);
        }
        
       List <Contact> conList = [SELECT Id, AccountId FROM Contact WHERE AccountId IN: accIds];
        
        for(Contact w: conList){
            
            Account acc = new Account();
            
            acc = Trigger.oldMap.get(w.AccountId);
            acc.addError(' If there is a related Contact record, the Account record can not be deleted');
        }
    }
}