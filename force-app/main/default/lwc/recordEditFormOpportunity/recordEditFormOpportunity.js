import { LightningElement, api } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

import OPPORTUNITY_OBJECT  from '@salesforce/schema/Opportunity';
import NAME_FIELD from '@salesforce/schema/Opportunity.Name';
import STAGE_NAME_FIELD from '@salesforce/schema/Opportunity.StageName';
import ACOUNT_FIELD from '@salesforce/schema/Opportunity.AccountId';
import AMOUNT_FIELD from '@salesforce/schema/Opportunity.Amount';
import CLOSE_DATE_FIELD from '@salesforce/schema/Opportunity.CloseDate';

export default class RecordEditFormOpportunity extends LightningElement {

    objectName = OPPORTUNITY_OBJECT;
    @api recordId;

    fields = {
        name : NAME_FIELD,
        stage : STAGE_NAME_FIELD,
        account : ACOUNT_FIELD,
        amount : AMOUNT_FIELD,
        closeDate : CLOSE_DATE_FIELD

    }


    successHandler(){
        const showSuccessMsg = new ShowToastEvent({
            title : 'SUCCESS!',
            message : 'The record has been saved successfully!',
            variant : 'success',
            mode : 'sticky'
        });
        this.dispatchEvent(showSuccessMsg);

        

    }

    errorHandler(){
        const showErrorMsg = new ShowToastEvent({
            title : 'ERROR!',
            message : 'The record has error!',
            variant : 'error',
            mode : 'sticky'
        });
        this.dispatchEvent(showErrorMsg);
    }


}