public class SchedulableOpportunity implements Schedulable {

    public void execute(SchedulableContext context){
        
        
       List<Opportunity> oppList = [SELECT Id, Name, OwnerId, CloseDate FROM Opportunity WHERE Zari__IsClosed__c = false AND CloseDate < TODAY];
        
        TaskClass.createTaskForOpp(oppList); //we send the opp list containing records with isClosed unchecked and closedDate passed...
        										//AND for the opp records, task will be assigned to the owners..
        										//Schedule is 8 AM on weekdays
    }
}