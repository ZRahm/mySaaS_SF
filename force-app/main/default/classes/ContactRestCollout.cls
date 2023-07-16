public class ContactRestCollout {
    
    public static void getContacts(String userId){
        
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://jsonplaceholder.typicode.com/users/' + userID);
        request.setMethod('GET');
        
        HttpResponse response = http.send(request);
        
        if(response.getStatusCode()==200){
            
            RestContactParser myContact = RestContactParser.parse(response.getBody());
            
            System.debug(myContact.name);
            System.debug(myContact.email);
            System.debug(myContact.Company.name);
            
            Contact con = new Contact();
            
            con.LastName =myContact.name;
            con.Email = myContact.email;
            insert con;
        }
    }
    
    public static void postAnimal(){
        
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json; charset=utf-8');
        request.setBody('{"name" : "Horse"}');
        
        HttpResponse response = http.send(request);
        
        if(response.getStatusCode()==201){
            System.debug(response.getBody());
        } else{
            System.debug('There is an issue in request: ' +Response.getStatus()+ '-'+ response.getStatusCode());
        }
    }

}