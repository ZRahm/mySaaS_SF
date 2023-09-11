public with sharing class AccountController {
   /*
   1.Create an LWC Component and display the top 10 accounts based on their Annual Revenue by using Apex in LWC. Display the following fields: Name, Type, Industry, Annual Revenue.
   */
@AuraEnabled(cacheable=true) // only used with the wire adapter
public static List<Account> getAccounts(){
    return [SELECT Name, Type, Industry, AnnualRevenue 
             FROM Account
             WHERE AnnualRevenue != NULL 
             WITH SECURITY_ENFORCED
             ORDER BY AnnualRevenue DESC
             LIMIT 10];
             

}

// get all the accounts whose name contains the search key. This is the Imparative Apex aproach

@AuraEnabled // no cacheable = true needed for imparative apex
public static List<Account> searchAccounts(String searchKey){
   searchKey = '%'+searchKey +'%';
   return [SELECT Id, Name, Type, Industry, AnnualRevenue
            FROM Account
            WHERE Name LIKE: searchKey
            WITH SECURITY_ENFORCED
            ORDER BY Name ASC
            LIMIT 20];
}
//HW - my own method
@AuraEnabled
public static List<Account> getTypes(String type){
   return [SELECT Id, Name, Type
            FROM Account
             WHERE Type=:type
             WITH SECURITY_ENFORCED];
}

//Use-Case: Get a;; the accounts by their Type given in dropdown list(Combobox)
@AuraEnabled 
public static List<Account> getAccountsByType(String type){
   return[SELECT Id, Name, Type, Industry, Phone
           FROM Account
           WHERE Type =: type
           WITH SECURITY_ENFORCED 
           ORDER BY Name ASC
           LIMIT 20];
}

//Get teh most recent accounts
@AuraEnabled(cacheable=true)
public static List<Account> getRecentAccounts(){
   return [SELECT Id, Name, Type, Industry, Phone, AnnualRevenue
            FROM Account
            WITH SECURITY_ENFORCED
            ORDER BY CreatedDate DESC
            LIMIT 10];

}

}