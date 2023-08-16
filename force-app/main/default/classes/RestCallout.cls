public class RestCallout {
    
    public static HttpResponse getAnimals(){
        //Prepare a request by using HttpRequest
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('GET');
        
        
        //Prepare the internet
        Http http = new Http(); // http is the name of Http, can be cnaged as well.
        
        //Send the Request over  the internet
        HttpResponse response= http.send(request);
        //process the Response (if everything goes fine or not, they will send us a response)
        if(response.getStatusCode() == 200){
            String json = response.getBody();
            System.debug('The response is : ' + json);
            //create a log for this
            CommonUtilities.createLog('Success', 'Integration','Get Animals', json);
            
        }else {
            //Log the error or other details. 
            CommonUtilities.createLog('Error', 'Integration','Get Animals', response.getBody());
        }

        return response;
    }

}