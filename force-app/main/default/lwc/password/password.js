import { LightningElement, track } from 'lwc';

export default class Password extends LightningElement {


    @track secretPassword = '';
    @track showContent = false;

    handleEvent(event){
        this.secretPassword = event.target.value;
        if(this.secretPassword === 'password1!'){
            this.showContent = true;
        }else{
            this.showContent = false;
        }

    }

  

}