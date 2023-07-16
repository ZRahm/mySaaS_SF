public class LeadTrigger14Handler {
    
    public static void afterUpdateLead(List<Lead> myLeads){
        
        List<Task> myTask = new List<Task>();
        for(Lead w: myLeads){
            if(w.Industry =='Education'){
                Task newTask = new Task(Subject='After Lead is updated the task is created', WhoId=w.Id);
                myTask.add(newTask);
            }
        }
        insert myTask;
    }

}