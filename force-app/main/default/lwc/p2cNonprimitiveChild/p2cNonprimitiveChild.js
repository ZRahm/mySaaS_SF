import { LightningElement, api } from 'lwc';

export default class P2cNonprimitiveChild extends LightningElement {


    //This component offers to display the records in a beautiful datatable
    @api records = []; //which is the data that will be displayed. it must be an array.
    @api fields = []; // they will be columns of the datatable


}