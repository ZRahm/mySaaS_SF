import { LightningElement } from 'lwc';

export default class ConditionalRenderingButton extends LightningElement {

    showContent = false;
    hideContent = true;
    labelName; 
    labelName2;


    handleClick(event){
        this.showContent = true;
        this.labelName = event.target.label;
    }
    handleClickHide(){
        this.showContent = false;
        
    }

    handleChange(){
        this.showContent = !this.showContent;

    }

    handleClickShowHide (){
        this.showContent = !this.showContent;
    }

}