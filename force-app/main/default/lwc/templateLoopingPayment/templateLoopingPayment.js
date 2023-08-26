import { LightningElement } from 'lwc';

export default class TemplateLoopingPayment extends LightningElement {

   payments = [
    {
        id : 101,
        type : "Annual Internet Allowance",
        amount : "$500.00",
        paid : true
    },
    {
        id: 201,
        type : "Well Being Allowance", 
        amount : "$700",
        paid : false
    },
    {
        id : 301,
        type : "Equipment Allowance",
        amount : "$1000",
        paid : true

    }
   ]



}