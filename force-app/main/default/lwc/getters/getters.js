import { LightningElement } from 'lwc';

export default class Getters extends LightningElement {

    num1 = 25;
    num2 = 75;
    
    get sum(){
        var sum=this.num1 + this.num2;
        return sum;
    }
   
    names=["Alex", "James", "Elizabeth", "Kathy"];

    get firstPerson(){
        return this.names[0];
    }

    number1 = 0;
    number2=0;

    changeHandleNumber1(event){
        this.number1 = event.target.value;
    }
    changeHandleNumber2(event){
        this.number2 = event.target.value;
    }

      get calculate(){
        return this.number1 * this.number2;
    }
}