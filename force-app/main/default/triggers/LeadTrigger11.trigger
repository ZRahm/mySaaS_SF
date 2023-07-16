trigger LeadTrigger11 on Lead (before insert, after insert) {
    
    if(Trigger.isBefore && Trigger.isInsert){
        
        for(Lead w: Trigger.new){
            if(String.isEmpty(w.LeadSource)){
                w.LeadSource = 'Other';
                System.debug(Trigger.operationType);
            }
        }
    }
    
    if(Trigger.isAfter && Trigger.isInsert){
        
        List<Task> taskList = new List<Task>();
        for(Lead w: Trigger.new){
            
            Task taskObj=new Task(Subject = 'New Lead Record is Created...', WhoId =w.Id);
            taskList.add(taskObj);
        }
        insert taskList;
        
    }

}