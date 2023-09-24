import { LightningElement, api } from 'lwc';

export default class P2cCallingChildMethodChild extends LightningElement {
    val=10;
    @api msg;

    @api resetSlider(){
        this.val=0;
    }
}