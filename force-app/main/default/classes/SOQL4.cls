public class SOQL4 {
    
    public static void queryDT (){
        
        AggregateResult[] results = [SELECT MIN(NumberOfEmployees), MAX(NumberOfEmployees),
                                  AVG(NumberOfEmployees) FROM Account ];
        System.debug(results); //AggregateResult:{expr0=120, expr1=145000, expr2=21996.81818181818}
        
        Object minVal = results[0].get('expr0');
        System.debug('Minimum Number Of Employees are: ' + minVal);
        
        Object maxVal = results[0].get('expr1');
        System.debug('Max Number of Employees are: ' + maxVal);
        
        Object avgVal = results[0].get('expr2');
        System.debug('Average Number Of Employees are: '+ avgVal);
        
        
        //2.Way
        AggregateResult[] results1 = [SELECT MIN(NumberOfEmployees)min, MAX(NumberOfEmployees)max,
                                  AVG(NumberOfEmployees)avg FROM Account ];
        System.debug(results1);//(AggregateResult:{min=120, max=145000, avg=21996.81818181818})
        
       Object minVal1 = results1[0].get('min');
       System.debug('Minimum Number Of Employees are: ' + minVal1);
        
         Object maxVal1 = results1[0].get('max');
        System.debug('Max Number of Employees are: ' + maxVal1);
        
        Object avgVal1 = results1[0].get('avg');
        System.debug('Average Number Of Employees are: '+ avgVal1);
        
        //3. way 
       List <Object> result2 = [SELECT MIN(NumberOfEmployees)min, MAX(NumberOfEmployees)max,
                                  AVG(NumberOfEmployees)avg FROM Account ];
        System.debug(result2);
        
    }
    
    // 3.1
    public static void aggregateResult(){
        
AggregateResult[] groupedResult = [SELECT Industry, 
                                   SUM(NumberOfEmployees)sum, 
                                   MIN(NumberOfEmployees)min, 
                                   MAX(NumberOfEmployees)max, 
                                   AVG(NumberOfEmployees)avg  
                        FROM Account 
                        GROUP BY Industry];
    
    System.debug(groupedResult);   
        
        Object education = groupedResult[5];
        System.debug(education);
        
         Object educationMin = groupedResult[5].get('min');
        System.debug(educationMin);
    }
    
    
    

}