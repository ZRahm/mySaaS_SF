import { LightningElement, wire } from 'lwc';
import getTypes from '@salesforce/apex/AccountController.getTypes';

const COLUMNS = [
    {label : "Acccount Name", fieldName : "Name", type : "text" },
    {label : "Account Type", fieldName : "Type", type : "text" },
    {label : "Industry", fieldName : "Industry", type : "text" },
    {label : "Annual Revenue", fieldName : "AnnualRevenue", type : "currency" }
];

export default class GetAccountsByTypeHW extends LightningElement {
    columns = COLUMNS;
    type='Prospect';

    changeHandler(event){
        this.type=event.target.value;
    }

    @wire(getTypes, {type: '$type'})
    accounts;
}