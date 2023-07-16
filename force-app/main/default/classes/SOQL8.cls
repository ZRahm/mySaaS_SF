public class SOQL8 {
    
    public void updateTheRecord(){
        String accName = 'Batch166-167';
        List <Account> accList = [SELECT Id FROM Account WHERE Name =:accName ];
        
        for(Account w: accList){
            w.Name = 'Batch166-167 updated';
            w.Phone = '1234567890';
            
        }
        update accList;
        System.debug(accList);
    }

}