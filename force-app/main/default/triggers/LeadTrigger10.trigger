trigger LeadTrigger10 on Lead (after update) {
    
    if(Trigger.isAfter && Trigger.isUpdate){
        
        List<Account> accList=new List<Account>();
        
        for(Lead w: Trigger.new){
            
            Account newAccount=new Account();
               newAccount.Name =w.Company;
                accList.add(newAccount);
        }
       insert accList;
    }

}