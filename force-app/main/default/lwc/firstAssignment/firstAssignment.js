import { LightningElement } from 'lwc';

export default class FirstAssignment extends LightningElement {

    number1 = 0;
    number2 = 0;

    event1(event){
        this.number1 = parseInt(event.target.value);
    }

    event2(event){
        this.number2 = parseInt(event.target.value);
    }

    get result(){
        var sum = this.number1 + this.number2;
        return sum;
    }

}