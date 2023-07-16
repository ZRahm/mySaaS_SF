trigger UpdateContactCity on Account (after update) {
    List<Contact> contactsToUpdate = new List<Contact>();
    for (Account acc : Trigger.new) {
        Account oldAcc = Trigger.oldMap.get(acc.Id);
        if (acc.BillingCity != oldAcc.BillingCity) {
            List<Contact> childContacts = [SELECT Id FROM Contact WHERE AccountId = :acc.Id];
            for (Contact con : childContacts) {
                con.MailingCity = acc.BillingCity;
                contactsToUpdate.add(con);
            }
        }
    }
    update contactsToUpdate;
}