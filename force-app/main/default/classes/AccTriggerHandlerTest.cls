@isTest
public class AccTriggerHandlerTest {
    
    @isTest
    public static void phoneValidationTest(){
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'Pepsi Cola Inc.';
        try{
            insert acc;
        }
        catch(exception e){
            System.Assert(e.getMessage().contains('Please verify Errors from the Account Trigger'));
        }
        Test.stopTest();
    }

}