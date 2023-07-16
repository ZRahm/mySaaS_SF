public class postGoRest {
    
    public static void  postUser(){
        
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setMethod('POST');
        request.setEndpoint('https://gorest.co.in/public/v2/users');
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        request.setHeader('Authorization', 'Bearer 04cd99416d49951ef40e5fa73247cc725ab1f870f9aa5e108ea2c9a650c12ab0');
        request.setBody('{"name": "Alisa","email": "jkl12@123gmail.com","gender": "female","status": "active"}');
        
        HttpResponse response = http.send(request);
        
        if(response.getStatusCode()==201){
            System.debug('Result: ' + response.getBody());
        } else{
            System.debug('Error: ' + response.getStatus() + '-' + response.getStatusCode());
        }
        
        
        
    
    }

}