public class QueueableContact implements Queueable {
    
    Map<Lead, Account> leadsWithAccountX = new Map<Lead, Account>();
    
    public QueueableContact(Map<Lead, Account> leadsWithAccount){
        
        this.leadsWithAccountX= leadsWithAccount;
    }
    
    public void execute (QueueableContext qc){
        
        List<Contact> conList = new List<Contact>();
        for(Lead lead : leadsWithAccountX.keySet()){
            
            conList.add(new Contact(FirstName = lead.FirstName,
                                   LastName = lead.LastName,
                                   AccountId = leadsWithAccountX.get(lead).Id));
        }
        
        insert conList;
    }

}