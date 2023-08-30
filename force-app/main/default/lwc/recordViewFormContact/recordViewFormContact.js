import { LightningElement } from 'lwc';

import CONTACT_OBJECT from '@salesforce/schema/Contact';
import FIRST_NAME_FIELD from '@salesforce/schema/Contact.FirstName';
import LAST_NAME_FIELD from '@salesforce/schema/Contact.LastName';
import ACCOUNT_ID_FIELD from '@salesforce/schema/Contact.AccountId';
import TITLE_FIELD from '@salesforce/schema/Contact.Title';
import EMAIL_FIELD from '@salesforce/schema/Contact.Email';
import PHONE_FIELD from '@salesforce/schema/Contact.Phone';
import DEPARTMENT_FIELD from '@salesforce/schema/Contact.Department';

export default class RecordViewFormContact extends LightningElement {


    objectName = CONTACT_OBJECT;
    recordId = '003Dn000007ZplzIAC';

    showContent=false;

    fields = {
        firstName : FIRST_NAME_FIELD,
        lastName : LAST_NAME_FIELD,
        account : ACCOUNT_ID_FIELD,
        title : TITLE_FIELD,
        email : EMAIL_FIELD,
        phone : PHONE_FIELD,
        department : DEPARTMENT_FIELD
    }

    handleChange(){
        this.showContent = !this.showContent;
    }
}