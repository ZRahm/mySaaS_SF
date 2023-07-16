trigger PreventAccountDeletion on Account (before delete) {
    // Query for Contacts related to the current Account records being deleted
    List<Contact> relatedContacts = [SELECT Id FROM Contact WHERE AccountId IN :Trigger.oldMap.keySet()];
    
    if (!relatedContacts.isEmpty()) {
        // Display error message and prevent Account deletion
        Trigger.oldMap.get(relatedContacts[0].AccountId).addError('If there is a Contact in the current account, delete operation cannot be performed!');
    }
}