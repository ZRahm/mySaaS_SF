public class SupportPlanUpdateScheduler implements Schedulable {
    
    public void execute(SchedulableContext sc){
        
        SupportPlanUpdateBatch batch = new SupportPlanUpdateBatch();
        Database.executeBatch(batch, 50);
    }

}