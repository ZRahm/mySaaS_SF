trigger LeadTrigger12 on Lead (before insert, after insert) {
    
    switch on Trigger.operationType{
        when BEFORE_INSERT{
            
            for(Lead w: Trigger.new){
            if(String.isEmpty(w.LeadSource)){
                w.LeadSource = 'Other';
                
            }
        }
    }
        
        when AFTER_INSERT{
            
             List<Task> taskList = new List<Task>();
        for(Lead w: Trigger.new){
            
            Task taskObj=new Task(Subject = 'New Lead Record is Created...', WhoId =w.Id);
            taskList.add(taskObj);
        }
        insert taskList;
        }

}
}