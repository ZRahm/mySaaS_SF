public class ListAddition {
    
     public static Integer sumList(List<Integer> numList) {
        Integer sum = 0;
        for (Integer num : numList) {
            sum += num;
        }
        return sum;
    }

}