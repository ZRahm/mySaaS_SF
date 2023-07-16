public class RoomCallOutPractice {
    
    public static void getRoom(){
        
        Http http=new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://medunna.com/api/rooms');
        request.setMethod('GET');
        request.setHeader('Authorization', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJkZXZlbG9wZXJzNjY2NyIsImF1dGgiOiJST0xFX0FETUlOIiwiZXhwIjoxNjkxNzcyNDkxfQ.poC2fY19mTnEUtD6J7fW9ZmLKni6p16-4oGRbw_zb2P1Ha7LilwznW7pxOc99r6C31V9LbGUbqbctFXzyqc5-w');
       HttpResponse response = http.send(request);
        
        System.debug('Status 	Code: '+ response.getStatusCode());
        System.debug('Data: '+ response.getBody());
        
        if(response.getStatusCode()==200){
            
            List<Object> roomData = (List<Object>) JSON.deserializeUntyped(response.getBody());
            for(Object w: roomData){
                System.debug('ROOM INFO: '+ w);
            }
            
            System.debug('________________');
            
           Object roomData2 = (Object) JSON.deserializeUntyped(response.getBody());
           System.debug('Here is the rooms info: ' + roomData2);
            
          
            
        }
    }
    
   

}