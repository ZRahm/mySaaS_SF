public class SOQL9 {
    
    public void deleteRecord(){
        
        List <Account> acc=[SELECT id FROM Account WHERE Phone = '1234567890'];
        delete acc;
        System.debug(acc);
        
    }
    
    public void undeleteTheRecord(){
        
        List<Account> accList =[SELECT id FROM Account WHERE isDeleted=true ALL ROWS];
        
        undelete accList;
        System.debug(accList);
    }

}