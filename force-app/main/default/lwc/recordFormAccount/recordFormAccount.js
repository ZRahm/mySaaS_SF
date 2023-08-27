import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import TYPE_FIELD from '@salesforce/schema/Account.Type';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import ANNUAL_REVENUE from '@salesforce/schema/Account.AnnualRevenue';
import RATING_FIELD from '@salesforce/schema/Account.Rating';



export default class RecordFormAccount extends LightningElement {

    testMessage;
    objectName = ACCOUNT_OBJECT;
    recordId = '001Dn00000Bza7JIAR';
    fields = [NAME_FIELD, TYPE_FIELD, INDUSTRY_FIELD, ANNUAL_REVENUE, RATING_FIELD];


    showSuccessMessage(){
        this.testMessage = "This is the sample text message to show the affect of onSuccess attribute in Lightning Record Page";

        const successToastMsg = new ShowToastEvent({
            title : 'SUCCESS!!!', 
            message : 'The Account Record has been saved successfully!!!',
            variant : 'success',
            mode : 'sticky'
        });
        this.dispatchEvent(successToastMsg);
    }

        showErrorMsg (){
             const errorToastMsg = new ShowToastEvent({
                title : 'ERROR!!!',
                message : 'Error has occured while saving the record! Please check your Validation Rules!',
                variant : 'error',
                mode : 'sticky'
             });
             this.dispatchEvent(errorToastMsg);

        }

        showLoadMsg(){
            const loadToastMsg = new ShowToastEvent({
                title : 'PAGE IS LOADING!!!',
                message : 'Please wait. The record is still Loading...',
                variant : 'warning',
                mode : 'sticky'
             });
             this.dispatchEvent(loadToastMsg);


        }

        showSubmitMsg(){
            const submitToastMsg = new ShowToastEvent({
                title : 'SUBMITTED!!!',
                message : 'The Record has been successfully submitted!',
                variant : 'info',
                mode : 'sticky'
             });
             this.dispatchEvent(submitToastMsg);

        }

    


}