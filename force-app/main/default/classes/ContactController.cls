public with sharing class ContactController {
   
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContacts(){
        return [SELECT FirstName, LastName, Title, Email, Phone 
                 FROM Contact
                 WHERE Phone != NULL AND Email != NULL
                 WITH SECURITY_ENFORCED
                 ORDER BY LastName ASC 
                 LIMIT 10];
    }
}