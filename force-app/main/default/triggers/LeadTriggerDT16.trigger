trigger LeadTriggerDT16 on Lead (after insert) {

    //for a created lead, create a task.....
    //and create a new lead through trigger...
    
    
     List<Task> taskList = new List<Task>();
    for(Lead w : Trigger.new){

        Task taskObj = new Task(Subject = 'A new lead record is created, please contact to the lead!', WhoId = w.Id);
        taskList.add(taskObj);
              
    }
    insert taskList;
    
   LeadTriggerDT16Handler.afterInsertHandler(Trigger.new);
}


// Recursion: some kind of repetition in execution...
// Avoiding recursion.....