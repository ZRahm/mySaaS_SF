import { LightningElement } from 'lwc';

export default class TechProEdComp extends LightningElement {

    name = "Zarina"; // variable in JS// properties in JS
    age = "31";
    city = "Lynnfield";
    country="USA";

    id;
    setup;
    punchline;
    type;

    valChange(event){
        console.log("valchange methos is invoked");
        console.log(event);
        console.log(event.target.value);
        this.name = event.target.value;
    }
callRest(){
    console.log('callREST  method is invoked');
    fetch("https://official-joke-api.appspot.com/random_joke", {method:"GET"})
    .then( response => response.json()) 
    .then(data => {
        console.log(data); 
        console.log(data.id); 
        console.log(data.setup); 
        console.log(data.punchline); 
        console.log(data.type); 
        this.id = data.id; 
        this.setup =data.setup;
        this.punchline =data.punchline;
        this.type =data.type;
        
     });
}

    


}