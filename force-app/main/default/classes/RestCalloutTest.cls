@isTest
public class RestCalloutTest {
    
    @isTest
    public static void getAnimalsTest(){
        // set up first Test.SetMock
        RestCalloutMock mock = new RestCalloutMock();
        Test.setMock(HttpCalloutMock.class, mock); // this is the object if the class that implement this HttpCaaloutMock interface.
        //We ave to put which type interface we used and we put httpcalloutMock. next - set up mock class name object.
        //now we can make the callout.
        Test.startTest();
        HttpResponse response = RestCallout.getAnimals();
        System.assertEquals(200, response.getStatusCode());
        System.assertEquals('OK', response.getStatus());
        System.assertEquals('{"animals":["majestic badger","fluffy bunny","scary bear","chicken"]}', response.getBody());
        Test.stopTest();
    }

}