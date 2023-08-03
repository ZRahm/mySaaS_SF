@isTest
public class TaskTest {
    
    @isTest
    public static void testTaskPriority(){
       String priority = Task.getTaskPriority('NY');
        System.assertEquals('Normal', priority);
    }
  @isTest
    public static void testInvalidEntry(){
       String priority = Task.getTaskPriority('Florida');
        System.assertEquals(null, priority);
    }
     @isTest
    public static void testHigh(){
       String priority = Task.getTaskPriority('CA');
        System.assertEquals('High', priority);
    }
}