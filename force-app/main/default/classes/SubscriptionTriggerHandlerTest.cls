@isTest
public class SubscriptionTriggerHandlerTest {
    
   @isTest
    public static void test1(){
        
        Account ac = new Account();
        ac.name = 'test acccount';
        ac.Phone= '8739380393';
        ac.Type = 'Analyst';
        ac.Industry = 'Aerospace';
       
       
        ac.BillingCountry = 'USA';
        insert ac;
        
        Opportunity oppt = new Opportunity();
        oppt.Name = 'test';
      
        oppt.Amount = 100;
        oppt.CloseDate = system.today();
        oppt.StageName = '10 - Prospecting';
       
        oppt.LeadSource = 'Event';
        insert oppt;
        
        // for creating a new subscription we need to fill out the lookup fields like account and initial opportunity. 
        // a new account and opportunity needed to be created.
        SAAS_Subscription__c sub = new SAAS_Subscription__c();
        sub.Customer_Account__c = ac.Id;  
        sub.Initial_Opportunity__c = oppt.Id;
        sub.Subscription_Start__c = system.today();
        insert sub;
        
        sub.SAAS_Product__c = 'Jet';
        update sub;
    }

}