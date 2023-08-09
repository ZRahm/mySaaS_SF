public class UpdateCustomerPriority {
    
    public static void updateCustomerPriority(List<Account> accs){
        
        List<Account> accounts = new List<Account>();
        
        for(Account a: accs){
           
        a.Zari__CustomerPriority__c ='High';
        accounts.add(a); 
        }
        update accounts;
        System.debug(accounts);
    }

}