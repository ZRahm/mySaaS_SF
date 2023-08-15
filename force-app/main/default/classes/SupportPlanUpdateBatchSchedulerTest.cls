@isTest
public class SupportPlanUpdateBatchSchedulerTest {
    
    @testSetup
    private static void testSetup(){
       List<Account> accounts = TestSuite.createAccount(3);
        accounts[0].Zari__CustomerPriority__c = 'High';
        accounts[1].Zari__CustomerPriority__c = 'Medium';
        accounts[2].Zari__CustomerPriority__c = 'Low';
        
        insert accounts;
        
        System.assertEquals(3, [SELECT count() FROM Account]);
        
        List<Id> accIds = new List<Id>();
        for(Account acc: accounts){
            accIds.add(acc.Id);
        }
        
        List<Case> cases= TestSuite.createCases(accIds, 3);
        insert cases;
      
        System.assertEquals(9, [SELECT count() FROM Case]);
        System.debug(cases.size());
        for(Case cs: cases){
            System.assertEquals(null, cs.Zari__Support_Plan__c);
        }
    }
    
    @isTest
    public static void testSupportPlanUpdateBatch(){
        Test.startTest();
        SupportPlanUpdateBatch batchable = new SupportPlanUpdateBatch();
        Database.executeBatch(batchable, 50);
        Test.stopTest();
        
        List<Case> cases= [SELECT Zari__Support_Plan__c, Account.Zari__CustomerPriority__c FROM Case];
        for(Case cs: cases){
            if(cs.Account.Zari__CustomerPriority__c == 'High'){
                System.assertEquals('Premium', cs.Zari__Support_Plan__c);
                System.debug(cs.Zari__Support_Plan__c);
                
            }else if(cs.Account.Zari__CustomerPriority__c == 'Medium'){
                System.assertEquals('Standard', cs.Zari__Support_Plan__c);
                System.debug(cs.Zari__Support_Plan__c);
            } else {
                 System.assertEquals('Basic', cs.Zari__Support_Plan__c);
                System.debug(cs.Zari__Support_Plan__c);
            }
        
        
    }
    

}
    
    
    @isTest
    public static void testSupportUpdateScheduler(){
        Test.startTest();
        String JobScheduleName='Support Plan Update Job';
        String  cronExp = '0 0 22 ? * MON-FRI';
        SupportPlanUpdateScheduler schSupPlan = new SupportPlanUpdateScheduler(); 
        String jobId = System.schedule(JobScheduleName, cronExp, schSupPlan);
        Test.stopTest();
        
        System.assertNotEquals(null, jobId);
        
    }
}