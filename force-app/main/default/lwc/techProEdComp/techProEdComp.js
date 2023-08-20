import { LightningElement } from 'lwc';

export default class TechProEdComp extends LightningElement {

    name = "Zarina"; // variable in JS// properties in JS
    age = "31";
    city = "Lynnfield";
    country="USA";

    valChange(event){
        console.log("valchange methos is invoked");
        console.log(event);
        console.log(event.target.value);
    }


    


}