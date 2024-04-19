//
//This class is created by @ZarinaRahmanova in 4/19/2024
//If Subscription has any active contracts mark the Subscription as active
// this handler class is called by SubscriptionTrigger and the test class is: SubscriptionTriggerHandlerTest
// 
// 
public class SubscriptionTriggerHandler {
    
    public static void checkForActiveContracts(list<SAAS_Subscription__c> sbList){
        
        Set<id> sbsSet = new Set<id>();
        
        for(SAAS_Subscription__c s: sbList){
            sbsSet.add(s.Id); //getting the id's of all subscriptions and storing to the set;
        }
        
        // getting all the contracts where the subscription id is in the set above - related contracts.
        List<Contract> activeContracts = [SELECT id, Name, Contract_Status__c, SAAS_Subscription__c FROM Contract WHERE  SAAS_Subscription__c IN : sbsSet];
        System.debug('Contract under Subscription = ' + activeContracts);
        System.debug('Size = '+ activeContracts.size());
        
        Map<Id, String> MapSubActive = new Map<Id, String>(); //Map to store the subscription as a key and related contract's status as a value
        
        for(Contract con: activeContracts){
            if(con.Contract_Status__c == 'Active'){
                MapSubActive.put(con.SAAS_Subscription__c, con.Contract_Status__c);
            }
        }
        
        Set<id> activeSubId = new Set<Id>(); // set to store the keys from the map = all subscriptions
        activeSubId = MapSubActive.keyset(); 
        
        for(SAAS_Subscription__c ssRec: sbList){ // checking if the list contains the subscriptions ID then undating that subscription's active subscription field to true
            if(activeSubId.contains(ssRec.Id)){
                ssRec.Active_Subscription__c = true;
            }
        }
               
        
        }
      
    }