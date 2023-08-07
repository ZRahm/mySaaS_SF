@isTest
public class AccProcessorTest {
    
    @isTest
    public static void countContactsTest(){
        
        List<Account> accList = new List<Account>();
        for(Integer i=0; i <10; i++){
             Account acc = new Account();
        acc.Name='Apple inc. -'+i;
        acc.Phone='1234'+i;
        acc.AnnualRevenue = 12345 +i;
        accList.add(acc);
        }
       insert accList;
        System.debug(accList);
        
        //now need to create new contacts
        List<Contact> contactList = new List<Contact>();//list for doing DML.
        List<Id> accIds = new List<Id>();
        for(Account a: accList){
          
            for(Integer i=0; i<3; i++){
                Contact con = new Contact();
            con.FirstName = 'FirstNAme '+i;
            con.LastName = 'LastNAme '+i;
            con.AccountId = a.Id;
            contactList.add(con);
            accIds.add(a.Id); 
            }
           
        }
        insert contactList;
        System.debug(contactList);
        
        Test.startTest();
        AccProcessor.countContacts(accIds);
        Test.stopTest();
        
        //need assertion - whole point of testing 
        List<Account> acc = [SELECT id, Zari__Number_of_Contacts__c FROM Account];
        System.assertEquals(3, acc[0].Zari__Number_of_Contacts__c);
        
    }

}