public class IterationExercise {
    
    public static void getMultiplicationTable(Integer num) {
        for (Integer i = 1; i <11; i++) { 
            System.debug(i + 'x' + num + '=' + num * i);
        }
    }

}
//debug log
//IterationExercise.getMultiplicationTable(6);