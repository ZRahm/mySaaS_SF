public class LeadTriggerDT15Handler {
    
     //Example 15: When a lead record is being inserted, and if leadsource is empty, assign 'Other'
    //If industry is empty populate an error message
    
   
    
    //The records that fires BEFORE_INSERT will be handled in following method
    public static void beforeInsertHandler(List<Lead> insertList){
        
        for(Lead w : insertList){
            
            if(String.isBlank(w.LeadSource)){
                w.LeadSource = 'Other';
            }
            
            if(String.isBlank(w.Industry)){
                w.Industry.addError('Industry can not be empty!');
            }
        }
 
	        
    }
    
    
 //SECOND PART   
 //When a lead record is being updated, and if leadsource is empty, assign 'Web',
 //When a lead record is being updated, Lead Status should not be changed to closed before contacting with the lead!
       
   
       //The records that fires BEFORE_UPDATE will be handled in following method
    public static void beforeUpdateHandler(List<Lead> updateList, Map<Id,Lead>leadOldMap){
        
        for(Lead w : updateList){
            if(String.isBlank(w.LeadSource)){
                w.LeadSource='Web';
            }           
       
        
       Lead oldLead = leadOldMap.get(w.Id); //Now I have the old version of related lead record
        if(oldLead.Status == 'Open - Not Contacted' && (w.Status == 'Closed - Converted' || w.Status == 'Closed - Not Converted')){
            
            w.Status.addError('Before changing the status closed, you should contact to the lead!');
        }
        } 
    }
       

}