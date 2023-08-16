public class CommonUtilities {
    
    // this util class is holding all reusable methods in my org
    // create application log record
    public static void createLog(String status, String targetType, String targetName, String message){
        
        List<Zari__Application_Log__c> appLog = new List<Zari__Application_Log__c>();
        Zari__Application_Log__c log = new Zari__Application_Log__c();
        log.Zari__Status__c = status;
        log.Zari__Target_Type__c = targetType;
        log.Zari__Target_Name__c = targetName;
        log.Zari__Message__c = message;
        appLog.add(log);
        insert appLog;
        
    }

}