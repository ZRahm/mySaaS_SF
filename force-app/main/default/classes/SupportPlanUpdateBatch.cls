public class SupportPlanUpdateBatch implements Database.Batchable<sObject>, Database.Stateful{
    
    //counter
    public integer recordsProcesses=0;
    public Database.QueryLocator start(Database.BatchableContext bc){
        
        String query ='SELECT Id, 	Zari__Support_Plan__c, Account.Zari__CustomerPriority__c FROM Case WHERE Zari__Support_Plan__c=null AND Account.Zari__CustomerPriority__c != null';
                      
        return Database.getQueryLocator(query);
    }
    
    public void execute(Database.BatchableContext bc, List<Case> cases){
        for(Case cs: cases){
            if(cs.Account.Zari__CustomerPriority__c =='High'){
                cs.Zari__Support_Plan__c ='Premium';
             
            }else if(cs.Account.Zari__CustomerPriority__c == 'Medium'){
                cs.Zari__Support_Plan__c ='Standard';
            }else{
                cs.Zari__Support_Plan__c ='Basic';
            }
            //need to count how many recs had been updated.
            recordsProcesses++;
        }
        update cases;
    }
    
    public void finish(Database.BatchableContext bc){
        System.debug('The total processed records are '+ recordsProcesses);
        
        List<Zari__Application_Log__c> appLogs = new  List<Zari__Application_Log__c>();
        
        Zari__Application_Log__c log= new Zari__Application_Log__c();
        log.Zari__Status__c = 'Success';
        log.Zari__Target_Type__c = 'Batch';
        log.Zari__Target_Name__c = 'SupportPlanUpdateBatch Class';
        log.Zari__Message__c = recordsProcesses + ' case records had been updated with their corresponding support plan';
        appLogs.add(log);
        insert appLogs;
    }

}