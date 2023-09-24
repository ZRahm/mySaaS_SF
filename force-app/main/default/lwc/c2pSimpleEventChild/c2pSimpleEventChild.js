import { LightningElement } from 'lwc';

export default class C2pSimpleEventChild extends LightningElement {

    closeHandler(){
        const closingEvent = new CustomEvent('close', {bubbles: true, detail: "This data is coming from Child component with the event details. You have successfully closed the modal by using childs custom event!"});
        this.dispatchEvent(closingEvent);
    }

    footerHandler(){
        console.log("Footer handler called!");
    }
    divHandler(){
        console.log('Div Handler is called!');
    }
}