public class MixedDmlExcp{

    public static void mdeTest(){
        
        //1. DML for Account
        Account acc = new Account(Name= 'Test for MDE V2'); //non-setup object
        insert acc; //DML
        MixedDmlExcp.assignPS('PermitFromApex', 'mtalha6667@force.com'); // enter the username and permission set name in the first method and....
        System.debug('Synchronous account insertion worked...');																	//assignPs() method will be executed asynchronously
        																	//we will handle Mized DML issue
        
       
    }
    
    @future //Asynch Apex 
    public static void assignPS(String psName, String usName){
        
      PermissionSet ps = [SELECT Id, Name FROM PermissionSet WHERE Name=: psName];
        
        User us = [SELECT Id, UserName FROM User WHERE UserName=: usName];
        
        PermissionSetAssignment psa = new PermissionSetAssignment();
        psa.AssigneeId = us.Id;
        psa.PermissionSetId = ps.Id;
        System.debug(psa);
        insert psa; //2. DML
        
    }
    
}