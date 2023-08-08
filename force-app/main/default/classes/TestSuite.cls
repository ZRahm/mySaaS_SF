public class TestSuite {
    
    //Create some account Records
    public static List<Account> createAccount(Integer count){
        List<Account> accounts = new List<Account>();
        for(Integer i=1; i<=count; i++){
            Account acc= new Account();
            acc.Name = 'Apex Testing Account '+i;
            acc.Phone = '12341234';
            acc.Type = 'Prospect';
            acc.AccountNumber = 'Acc100'+i;
            acc.Rating = 'Cold';
            accounts.add(acc);
        }
        return accounts;
    }
    
    public static List<Case> createCases(List<Id> accountIds, Integer count){
        List<Case> cases= new List<Case>();
        for(Id accId: accountIds){
            for(Integer i=1; i<=count; i++){
                Case cs = new Case();
                cs.Subject = 'Test Subject '+i;
                cs.Priority = 'Low';
                cs.AccountId =accId;
                cs.Status='New';
                cases.add(cs);
            }
        }
        return cases;
    }

}