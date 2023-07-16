public class Class7 {
    
    public static void largestOutOfTwoNumbers(Decimal a, decimal b){
        if(a>b){
            system.debug(a);
        }else{
            System.debug(b);
        }
    }
    
    public static void smallestOutOfThreeNumbers (Decimal a, Decimal b, Decimal c){
        if(a<b && a<c){
            System.debug(a);
        } else if(b<a && b<c){
            System.debug(b);
     
        }else{
            System.debug(c);
        }

}
    public static void sumofPositiveIntegers(Integer n){
        Integer sum=0;
        if(n>0){
          for(Integer i=0; i<=n; i++){
          sum+=i;  
        }
            System.debug(sum);  
        } else{
            System.debug('We are not calculating the sum for negative numbers" and return null value');
        }
        
        
    }
    
     public static void SUM(List<Integer> num){
         if(num.isEMpty()){
             System.debug('Please provide values to do the operation');
         }
         Integer sum=0;
        for(Integer w: num){
            sum+=w;
        }
        System.debug(sum);
    }
    
    public static void AVG(List<Integer> num){
        if(num.isEmpty()){
            System.debug('Please provide values to do the operation');
        }
        Integer avg=0, sum=0;
    
        
        for(Integer w: num){
            sum=sum+w;
            avg=sum/num.size();
        }
        System.debug(avg);
    }
    
}