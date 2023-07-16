public class AverageNum {
    
    public static void getPerfectAverage(Integer num1, Integer num2) {
        Integer sum = 0;
        Integer count = 0;
        
        for (Integer i = num1; i <= num2; i++) {
            sum += i+1;
            count++;
        } 
        
        Decimal average = (Decimal)sum / count;
        System.debug('Average: ' + average);
    }
}

//AverageNum.getPerfectAverage(3,5);