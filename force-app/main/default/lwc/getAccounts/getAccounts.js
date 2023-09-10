import { LightningElement, wire } from 'lwc';

import getAccounts from '@salesforce/apex/AccountController.getAccounts';

//my columns are array of objects with 3 properties: lable, filedName, type
const COLUMNS = [
    {label : "Acccount Name", fieldName : "Name", type : "text" },
    {label : "Account Type", fieldName : "Type", type : "text" },
    {label : "Industry", fieldName : "Industry", type : "text" },
    {label : "Annual Revenue", fieldName : "AnnualRevenue", type : "currency" }
];

export default class GetAccounts extends LightningElement {

    columns = COLUMNS;

    @wire(getAccounts)
    accounts;

}