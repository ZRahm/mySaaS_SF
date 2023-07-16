public class ApexSOQLExample {
    
    public static void queryForAccounts(){
        Integer minimumAnnualRevenue = 5000;
        Set <String> accountTypes = new Set <String>{'Customer - Direct', 'Customer = Channel'};
        List <Account> acctList = [SELECT Id, Name FROM Account WHERE Type IN :accountTypes];
        Map <Id, Account> acctMap = 
            new Map <Id, Account>([SELECT Id, Name FROM Account WHERE Type IN :accountTypes]);
        System.debug(acctList);
    }
    
    public static void dynamicAccountQuery(){
        String queryString = 'SELECT Id, Name FROM Account WHERE TYPE IN :accountTypes';
        List <Account> acctList = Database.query(queryString);
        System.debug(acctList);
    }

}