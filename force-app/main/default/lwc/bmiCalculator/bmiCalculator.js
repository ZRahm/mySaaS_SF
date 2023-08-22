import { LightningElement } from 'lwc';

export default class BmiCalculator extends LightningElement {

    weight=0;
    height=0;
    res = " ";

    bmiCal(event){
      if(this.weight> 0 && this.height >0){
        const bmi = this.weight /(this.height * this.height);
        this.res = bmi.toFixed(2);
        console.log(event.target.value);
        this.res=event.target.value;
        console.log(this.res);
      }else{
        this.res = null;
        console.log(event.target.value);
        this.res=event.target.value;
        console.log(this.res);
      }

    }
}