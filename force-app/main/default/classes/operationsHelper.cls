public class operationsHelper {
    
    public static Decimal largestOutOfTwoNumbers (Decimal a, Decimal b){
        if (a>b){
            System.debug(a);
            return a;
                }else {
                    System.debug(b);
                    return b;
                }
    }

    public static Decimal smallestOutOfThreeNums (Decimal a, Decimal b, Decimal c){
        if (a<b && a<c){
            System.debug(a);
            return a;
        } else if (b<c && b<a){
            System.debug (b);
            return b;
        } else {
            System.debug(c);
            return c;
        }
    }
    
    
    public static Integer sumOfPositiveIntegers (Integer n){
        if (n < 0){
            System.debug('We are not calculating the sum for negative numbers!');
            return null;
        }
        
        Integer sum =0;
        for (Integer i=1; i<=n; i++){
            sum+=i;
        }
        System.debug(sum);
        return sum;
        
        
    }
    
    Public static Integer sum(List<Integer> nums){
        if(nums.isEmpty()){
            System.debug('Please provide values to do the operation');
            return null;
        } else {
             Integer sum =0;
            for (Integer i=0; i<nums.size(); i++){
               
                sum+=nums.get(i);
                
            }
            System.debug(sum);
                return sum;
        }
    }// List <Integer> nums = new List <Integer> {3,4,5,6};
//Integer sum = operationsHelper.sum(nums);
//System.debug(sum);//18
    
    public static Integer avg(List<Integer> nums){
        if (nums.isEmpty()){
            System.debug('Please provide the Values to do the operation');
            return null;
        } else{
            Integer avg = 0;
            for (Integer i=0; i<nums.size(); i++){
               avg +=nums.get(i)/nums.size();
                
            }
            System.debug(avg);
                return avg;
        }
    }//List<Integer> nums = new List<Integer> {10, 20, 30, 40};
   //Integer avg =operationsHelper.avg(nums);
//System.debug(avg);//24
    
    public static Integer highest(List<Integer> nums){
        if(nums.isEmpty()){
            System.debug('The List is emptry, cannot do the operation');
            return null;
        } else {
            Integer highest=nums.get(0);
            for (Integer i=1; i<nums.size(); i++){
                  highest = Math.max(highest, nums.get(i));
            }
             System.debug(highest);
        return highest;
              
        }
       
    }// List<Integer> nums = new List<Integer> {80, 90, 70, 50};
   //Integer highest =operationsHelper.highest(nums);
//System.debug(highest);//90
    
    
    public static Decimal lowestOfDecimal(List<Decimal>nums){
        if(nums.isEmpty()){
            System.debug('List is Empty!');
            return null;
        }
        Decimal lowest=nums.get(0);
        for (Integer i=1; i<nums.size(); i++){
            lowest = Math.min(lowest, nums.get(i));
        }
        System.debug(lowest);
        return lowest;
        
    } //List <Decimal> nums = new List<Decimal> {10.0, 20.3, 30.5, 40.8};
    //operationsHelper.lowestOfDecimal(nums);// 10.0
    
    
    public static String reverse(List<String> str){
        String reverse ='';
        for(Integer i=str.size()-1; i>=0; i--){
            reverse +=str.get(i)+' ';
            System.debug(reverse);
        
        }
        return reverse;
    }    
    
    
    
    
    
    
    
    
    
}