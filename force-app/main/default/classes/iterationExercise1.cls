public class iterationExercise1 {
    
    public static void getMultiplicationTable(Integer num){
        for(Integer i=1; i<11; i++){
           Integer sum=i*num;
            System.debug(i + 'x'+ num + '='+sum);
        }
        
    }

}