public class RestCalloutMock implements HttpCalloutMock {
    // implementing HttpCalloutMock interface to setup my mock callout platform
    // I will write/provide a method named respond
    // this respond method is bvasically the method we will call for response
    // method recieves HttpRequest type parameter and this respond method will have a return statement
    // the respond method returns HttpResponse type data
    // This respond method if also nonstatic method
    
    public HttpResponse respond(HttpRequest  request){
        // in order to return the HttpResponse type, first get its instance and pass it to the return statement
        HttpResponse response = new HttpResponse();
        response.setStatusCode(200);
        response.setStatus('OK');
        response.setBody('{"animals":["majestic badger","fluffy bunny","scary bear","chicken"]}');//You are going to set your body here that is supposed to come after the callout
        
        return response;
        
    }

}