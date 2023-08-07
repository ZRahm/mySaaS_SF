public class AccProcessor {
    
    @Future
    public static void countContacts(List<Id> accIds){
        //Database call to get the accounts and its contacts.
        List<Account> accounts = [SELECT Id, Name, Zari__Number_of_Contacts__c, (SELECT Id FROM Contacts) 
                                  FROM Account 
                                 WHERE Id IN :accIds];
        
        //Now we got all the accounts and their related contacts
        for(Account a: accounts){
            a.Zari__Number_of_Contacts__c = a.Contacts.size();
        }
        update accounts;
    }

    /*List<Account> accList = [SELECT Id FROM Account];
List<Id> accIds = new List<Id>();
for(Account a: accList){
    accIds.add(a.Id);
    
}

AccProcessor.countContacts(accIds);
*/
}