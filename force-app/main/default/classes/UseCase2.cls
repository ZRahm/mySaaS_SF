public class UseCase2 {
    
    public Integer getAverage(Integer num1, Integer num2){
       
       Integer sum=0, 					counter=0;
        
       	 Integer avg;
        
        	for(Integer i=num1; i<=num2; i++){
            
         	   sum = sum+i;
         		  counter++;
            
        }
        
        avg = sum/counter;
        System.debug('Average of numbers from '+num1+ ' and '+num2+ ' is ' +avg);
        return avg;
    }

}

// UseCase2 avgOfNumber = new UseCase2();
//avgOfNumber.getAverage(1,10);