import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

import CONTACT_OBJECT from '@salesforce/schema/Contact';
import FIRST_NAME_FIELD from '@salesforce/schema/Contact.FirstName';
import LAST_NAME_FIELD from '@salesforce/schema/Contact.LastName';
import ACCOUNT_ID_FIELD from '@salesforce/schema/Contact.AccountId';
import TITLE_FIELD from '@salesforce/schema/Contact.Title';
import EMAIL_FIELD from '@salesforce/schema/Contact.Email';
import PHONE_FIELD from '@salesforce/schema/Contact.Phone';
import DEPARTMENT_FIELD from '@salesforce/schema/Contact.Department';


export default class RecordFormContact extends LightningElement {

    objectName= CONTACT_OBJECT;
    recordId = '003Dn000007ZplzIAC';
    fields=[FIRST_NAME_FIELD, LAST_NAME_FIELD, ACCOUNT_ID_FIELD, TITLE_FIELD, EMAIL_FIELD, PHONE_FIELD, DEPARTMENT_FIELD];

    showSuccessMessage(){
        const successToastMsg = new ShowToastEvent({
            title : 'SUCCESS',
            message : 'You have successfully saved your contact Record!',
            variant : 'success',
            mode : 'pester'
        })
        this.dispatchEvent(successToastMsg);

    }
}