import { LightningElement } from 'lwc';

export default class Introduction extends LightningElement {

    greeting = "Hello";
   fullName="Isaac Thomas";
   certNum=3; 

   location = {
    country : "USA",
    state : "TX",
    zipCode : "53450"
   }

  extra = {
    color : "blue",
    food : "pizza",
    hobby : "swimming"
  }
    
    

}