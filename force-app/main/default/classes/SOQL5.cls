public class SOQL5 {
    
    public static void myMethod(){
      AggregateResult[] result = [SELECT Industry,  AVG(NumberOfEmployees)avg  
FROM Account 
GROUP BY Industry];
        
        System.debug(result);
        
        for(AggregateResult w: result){
            System.debug(w.get('Industry') + '-' + w.get('avg'));
        }
        
        //way 2, ok to use, but not recommended
       for (AggregateResult w: [SELECT Industry,  AVG(NumberOfEmployees)avg  
FROM Account 
                                GROUP BY Industry]){
                                   System.debug('2nd Way  '+ w.get('Industry') + '-' + w.get('avg'));  
                                }
        
        
    }
   
        

}