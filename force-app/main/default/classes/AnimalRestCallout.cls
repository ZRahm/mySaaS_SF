public class AnimalRestCallout {
    
    public static void getAnimals(){
        
        Http httpDT = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('GET');
        HttpResponse response = httpDT.send(request);
        
        if(response.getStatusCode()==200){
           /* 
            Map <String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            
            List<Object> animalList = (List<Object>) results.get('animals');
            
            for(Object w: animalList){
                System.debug(w);
            }
*/
            RestAnimalParse restAnimalP = RestAnimalParse.parse(response.getBody());
            
            for(Object w : restAnimalP.animals ){
                System.debug(w);
            }
        }
        
    }

}