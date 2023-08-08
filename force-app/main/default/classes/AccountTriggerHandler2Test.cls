@isTest
public class AccountTriggerHandler2Test {
    
    @testSetup
    public static void testSetup(){
        
        List<Id> accountIds = new List<Id>();
        List<Account> accounts = TestSuite.createAccount(3);
        insert accounts;
        List<Account> insertedAccounts = [SELECT Id, Rating FROM Account];
        System.assertEquals(3, [SELECT count() FROM Account]); //insertedAccounts.size()
        for(Account acc : insertedAccounts){
            accountIds.add(acc.Id);
            System.assertEquals('Cold', acc.Rating);
             
        }
        List<Case> cases= TestSuite.createCases(accountIds, 4);
        insert cases;
        System.assertEquals(12, [SELECT count() FROM Case]);
    }
    
    
    @isTest
    public static void testAccRatingChange(){
        List<Account> accounts = [SELECT Id, Rating FROM Account];
        for(Account acc: accounts){
            acc.Rating = 'Hot';
            
        }
        update accounts;
        List<Case> cases =[SELECT Id, Priority, Account.Rating FROM Case];
        for(Case cs: cases){
            System.assertEquals('High', cs.Priority);
            System.debug(cs.Priority);
        }
        
         
    }

    @isTest
    public static void testAccRatingChangeWarm(){
        List<Account> accounts = [SELECT Id, Rating FROM Account];
        for(Account acc: accounts){
            acc.Rating = 'Warm';
            
        }
        update accounts;
        List<Case> cases =[SELECT Id, Priority, Account.Rating FROM Case];
        for(Case cs: cases){
            System.assertEquals('Medium', cs.Priority);
            System.debug(cs.Priority);
        }
        
               
    }
    @isTest
    public static void testAccRatingChangeCold(){
        List<Account> accounts = [SELECT Id, Rating FROM Account];
        for(Account acc: accounts){
            acc.Rating = 'Cold';
            
        }
        update accounts;
        List<Case> cases =[SELECT Id, Priority, Account.Rating FROM Case];
        for(Case cs: cases){
            System.assertEquals('Low', cs.Priority);
            System.debug(cs.Priority);
        }
        
         
    }
    @isTest
    public static void testAccRatingChangeElsePart(){
        List<Account> accounts = [SELECT Id, Rating FROM Account];
        for(Account acc: accounts){
            acc.Rating = null;
            
        }
        update accounts;
        List<Case> cases =[SELECT Id, Priority, Account.Rating FROM Case];
        for(Case cs: cases){
            System.assertEquals('Low', cs.Priority);
            System.debug(cs.Priority);
        }
        
         
    }
}