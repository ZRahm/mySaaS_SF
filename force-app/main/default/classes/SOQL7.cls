public class SOQL7 {
    
    public void selectRecordInTheGivenOrder(Integer limt, Integer offs){
        List <Account> acc = [SELECT Name, Rating FROM Account LIMIT :limt OFFSET:offs];  
        System.debug(acc);
        
        for(Account w: acc){
            System.debug('Account Name is ' + w.Name + ' - ' + w.Rating);
        }
    }

}