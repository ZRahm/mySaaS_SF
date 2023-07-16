public class UseCase {
    
    public static List<Integer> method(List <Integer> nums){
        
        for(Integer w: nums){
            nums.add(w);
        }
        
        System.debug(nums);
        return nums;
        
    }

}