trigger LeadTrigger13 on Lead (before update) {
    
    //Example 13: When a lead record is updated, create a tsk only when Industry is education....

    if(Trigger.isBefore && Trigger.isUpdate){
       
        List<Task> newTask = new List<Task>();
        for(Lead w: Trigger.new){
            if(w.Industry =='Education'){
                Task myTask = new Task(Subject = 'Task is created when Lead with Education industry is updated', WhoId =w.Id);
                
                newTask.add(myTask);
            }
        }
        insert newTask;
    }
}