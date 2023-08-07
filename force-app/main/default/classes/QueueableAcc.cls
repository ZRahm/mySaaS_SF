public class QueueableAcc implements Queueable{

    
    
      public List<Lead> myLeads;
    
    public QueueableAcc(List<Lead> leadList){
        
       this.myLeads = leadList;
    }
    
    
    //insert account records by using lead information....
    public void execute(System.QueueableContext qc){
        Map<Lead, Account> leadsWithAccounts = new Map<Lead, Account>();
        
        for(Lead lead : myLeads){
            
            Account newAcc = new Account();
            newAcc.Name = lead.Company;
            newAcc.Industry = lead.Industry;
            newAcc.BillingCountry = lead.Country;
            newAcc.BillingState = lead.State;
            newAcc.BillingCity = lead.City;
             leadsWithAccounts.put(lead, newAcc);
        }
        
         insert leadsWithAccounts.values();
        
        QueueableContact queCont = new QueueableContact(leadsWithAccounts);
        System.enqueueJob(queCont);
    }
  
}