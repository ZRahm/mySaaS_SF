public class LeadTriggerDT16Handler {
    
    public static Boolean keyForLockTheDoor = true;
    
    public static void afterInsertHandler(List<Lead> lead){
        
        if(keyForLockTheDoor){
          
            
             Lead newLead = new Lead(LastName = 'Recursion Test', Company = ' DT TPE', Industry='Finance');
    insert newLead;
              keyForLockTheDoor=false;
        }
        
        
    }

}