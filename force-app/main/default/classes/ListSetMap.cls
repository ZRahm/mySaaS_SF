public class ListSetMap {
    
    public static  void practiceOne (){
        
        List <String> cityNames = new List<String>{'Ankara', 'Istanbul', 'London', 'Paris', 'New York', 'Tokyo',
            'Antalya', 'London', 'Paris', 'New York', 'Tokyo'};
                System.debug(cityNames);
              System.debug(cityNames.size());
        System.debug(cityNames.isEmpty());
        System.debug(cityNames.get(6));
        Set<String> mySet=new Set<String>(cityNames);
        System.debug(mySet);
    }
    
   public static Set<Integer> practiceTwo(List<Integer> nums) {
    Set<Integer> odds = new Set<Integer>();
    Set<Integer> evens = new Set<Integer>();

    for (Integer w : nums) {
        if (Math.mod(w, 2) != 0) {
            odds.add(w);
        } else {
            evens.add(w);
        }
    }

    if (odds.size() > evens.size()) {
        System.debug(odds);
        return odds;
    } else {
        System.debug(evens);
        return evens;
    }
}

    
    
    
       
           
}