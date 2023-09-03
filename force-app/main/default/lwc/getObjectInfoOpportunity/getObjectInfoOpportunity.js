import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';

import OPPORTUNITY_OBJECT from '@salesforce/schema/Opportunity';
import STAGE_NAME from '@salesforce/schema/Opportunity.StageName';

export default class GetObjectInfoOpportunity extends LightningElement {

    krtId;
    options;
    selectValue;

    @wire(getObjectInfo, {objectApiName:OPPORTUNITY_OBJECT})
    opportunityInfor({data, error}){
        if(data){
            console.log(data);
            this.krtId = data.defaultRecordTypeId;
            console.log('This is the Kitchen Appliances record Type : ' + this.krtId);
        }
        if(error){
            console.log(error);
        }
    }

    @wire(getPicklistValues,{fieldApiName : STAGE_NAME, recordTypeId : '$krtId'})
    stageNamePicklist({data, error}){
        if(data){
            console.log(data);
            this.options = this.picklistGenerator(data);
        }
        if(error){
            console.log(error);
        }
    }

    handleChange(event){
        this.selectValue = event.target.value;

    }

    picklistGenerator(data){
        return data.values.map(w=>({ // w is iterator = value - the array name.
            label : w.label, 
            value : w.value
        }));
    }




}