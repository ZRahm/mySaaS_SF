public class ContractTriggerHandler {
    
    public static void inactiveCons (List<Contract> conList){
        
        // Define a set to hold the parent SaaS subscription IDs to process
        Set<Id> subscriptionIds = new Set<Id>();
        
        // Collect all the SaaS Subscription IDs related to the contracts being processed
        for(Contract c: conlist){
            subscriptionIds.add(c.SAAS_Subscription__c);
        }
        
        list<SAAS_Subscription__c> listSub = [select id, name, 
                                          	 (select id, name, Contract_Status__c from Contracts__r) 
                                                 from SAAS_Subscription__c where id in : subscriptionIds];
    
    system.debug('listSub = '+ listSub);
    system.debug('listSub size = '+ listSub.size() );
    
    Boolean doNotHaveAnyActive;
    
    set<id> ActiveCon = new set<id>();
    set<id> InActiveCon = new set<id>();
    
    for(SAAS_Subscription__c sub : listSub){
        
            for(Contract con: sub.Contracts__r ){
                if(con.Contract_Status__c == 'Active'){
                    ActiveCon.add(sub.Id);
                }else{
                    InActiveCon.add(sub.Id);
                }
            }      
        
    }
    
    system.debug('ActiveCon  '+ ActiveCon);
    system.debug('InActiveCon  '+ InActiveCon);
    
    for(SAAS_Subscription__c sub : listSub){
        
        if(ActiveCon.contains(sub.Id)){
            sub.Active_Subscription__c =true;
        }else{
            sub.Active_Subscription__c =false;
        }
        
    }
    
    system.debug(listSub);
    update listSub;
    

}
}