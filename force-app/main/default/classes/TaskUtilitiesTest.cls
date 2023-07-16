@isTest
public class TaskUtilitiesTest {
    
    @isTest
    public static void testgetTaskPriorityNormal(){
       String tp = TaskUtilities.getTaskPriority('GA');
        System.assertEquals('Normal', tp);
        
    }
    @isTest
    public static void testgetTaskPriorityHigh(){
       String tp = TaskUtilities.getTaskPriority('CA');
        System.assertEquals('High', tp, 'If you receive an error for this assertion you can also check the Priority name in your Apex class');
        
    }
 @isTest
    public static void testgetTaskPriorityNull(){
       String tp = TaskUtilities.getTaskPriority('');
        System.assertEquals(Null, tp);
        
    }
}