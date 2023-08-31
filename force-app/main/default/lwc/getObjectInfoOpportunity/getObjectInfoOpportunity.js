import { getObjectInfo } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';

import OPPORTUNITY_OBJECT from '@salesforce/schema/Opportunity';

export default class GetObjectInfoOpportunity extends LightningElement {

    krtId;

    @wire(getObjectInfo, {objectApiName:OPPORTUNITY_OBJECT})
    opportunityInfor({data, error}){
        if(data){
            console.log(data);
            this.krtId = data.defaultRecordTypeId;
        }
        if(error){
            console.log(error);
        }
    }




}