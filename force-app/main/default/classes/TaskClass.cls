public class TaskClass {
    
    public static void createTaskForOpp(List<Opportunity> oppList){
        
        List<Task> taskList = new List<Task>();
        
        for(Opportunity opp: oppList){
            
            Task newTask = new Task();
            newTask.Subject = opp.Name + 'Close Date of This opportunity needs to be checked!';
                newTask.WhatId = opp.id;
                newTask.OwnerId = opp.OwnerId; 
                
                taskList.add(newTask);
        }
        
        if(taskList.size()>0){
            insert taskList;
        }
    }

}