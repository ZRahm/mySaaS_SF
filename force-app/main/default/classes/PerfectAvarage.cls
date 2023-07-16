public class PerfectAvarage {
    
    public Static void getPerfectAvarage1(Integer num1, Integer num2){
        Integer sum = 0;
        Integer count = 0;
        
        for(Integer i=num1; i<=num2; i++){
            sum += i+1;
            count ++;
        }
        Integer average = (Integer)sum/count;
        System.debug('Average: ' + average);
    }

}