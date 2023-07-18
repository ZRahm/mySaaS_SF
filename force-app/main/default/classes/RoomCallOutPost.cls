public class RoomCallOutPost {
    
    
     public class Room{
        
        public String description;
        public Integer price;
        public Integer roomNumber;
        public String roomType;
        public Boolean status;
        
        
    }
    public static void roomPost(){
        
        Room room = new Room();
        
        room.description = 'New Room of Zarina';
        room.price = 300;
        room.roomNumber = 599;
        room.roomType = 'DELUXE';
        room.status = true;
         String json = JSON.serialize(room);
        
        Http http = new Http();
         HttpRequest request = new HttpRequest();
        request.setEndpoint('https://medunna.com/api/rooms');
        request.setMethod('GET');
        request.setHeader('Authorization', 'Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJkZXZlbG9wZXJzNjY2NyIsImF1dGgiOiJST0xFX0FETUlOIiwiZXhwIjoxNjkxNzcyNDkxfQ.poC2fY19mTnEUtD6J7fW9ZmLKni6p16-4oGRbw_zb2P1Ha7LilwznW7pxOc99r6C31V9LbGUbqbctFXzyqc5-w');
        request.setHeader('Content-Type', 'application/json');
        request.setBody(json);
        
        HttpResponse response = http.send(request);
        
        System.debug(request.getBody());
        System.debug(response.getBody());
        System.debug(response.getStatus() + ' - ' + response.getStatusCode());
    }
    
    public static void putRoom(Integer roomPrice){
        
        String dataToUpdate = '{ "id": 66308, "roomNumber": 590,'
  + ' "roomType": "DELUXE", "status": true,"price":' +roomPrice +' ,    "description": "New Updated Room by Zarina"}';
   
    
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://medunna.com/api/rooms');
        request.setMEthod('PUT');
         request.setHeader('Authorization', 'Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJkZXZlbG9wZXJzNjY2NyIsImF1dGgiOiJST0xFX0FETUlOIiwiZXhwIjoxNjkxNzcyNDkxfQ.poC2fY19mTnEUtD6J7fW9ZmLKni6p16-4oGRbw_zb2P1Ha7LilwznW7pxOc99r6C31V9LbGUbqbctFXzyqc5-w');
        request.setHeader('Content-Type', 'application/json');
        request.setBody(dataToUpdate);
        
        HttpResponse response = http.send(request);
        System.debug(response.getBody() + ' ' + response.getStatusCode() + ' '+ response.getStatus());
        System.assert(200==response.getStatusCode(), 'StatusCode is not matching, check the body or method in the class '+ response.getStatusCode());
    }

}