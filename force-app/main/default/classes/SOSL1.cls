public class SOSL1 {
    
    public void SOSL1(){
        
       List<List<sObject>> myList= [FIND 'GenePoint' IN ALL FIELDS RETURNING Account(Name), Contact(FirstName, LastName, Email)];
        
        System.debug(myList);
    }
    
    public void SOSL2 (){
        
        List<List<sObject>> myList2 = [FIND 'United' IN ALL FIELDS RETURNING Account(Name, Industry), Contact(FirstName, LastName, Email)];
        System.debug(myList2);
        for (List <sObject> w: myList2){
            
            System.debug(w);
        }
    }
    
    public void SOSL3(){
       List<List<sObject>> myList3 = [FIND 'Un*' IN ALL FIELDS RETURNING Account(Name), Contact(FirstName, LastName, Email, Phone)];
        System.debug(myList3); 
        
        for(List<sObject> w: myList3){
            System.debug(w);
        }
        
    }

}