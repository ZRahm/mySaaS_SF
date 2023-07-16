public class SOQL {
    
    public static void queryTask(){
        
       List<Account> myList = [SELECT Name, Phone FROM Account];
        for (Account w: myList){
            System.debug(w);
        }
        
        Map<Id, Account> myMap = new Map<Id, Account>([SELECT Name, Phone FROM Account]);
        System.debug(myMap);
        // to make it readable on the console, create a loop
        for (Account w: myMap.values()){
            System.debug(w);
        }
    }

}