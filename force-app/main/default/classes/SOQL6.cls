public class SOQL6 {
    
    public static void dataBinding(){
        
        List <Account> r1 = [SELECT Name, Phone, Rating FROM Account WHERE Name ='Burlington Textiles Corp of America'OR
Name = 'sForce' OR
Name ='Dickenson plc' OR
Name = 'GenePoint'];
        
        System.debug(r1);
        
        for(Account w: r1){
            System.debug(w);
        }
        
        //2 way - data Binding - better way
        
         List <Account> r2 = [SELECT Name, Phone, Rating FROM Account WHERE Name IN('Burlington Textiles Corp of America',
'sForce',
'Dickenson plc',
 'GenePoint')];
        
        System.debug(r2);
        
        //3 way - best way
        
        List <String> accNames = new List<String> {'Burlington Textiles Corp of America',
'sForce',
'Dickenson plc',
 'GenePoint'};
    List <Account> r3 = [SELECT Name, Phone, Rating FROM Account WHERE Name IN: accNames];
     System.debug(r3);
    }

}