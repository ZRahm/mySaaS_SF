import { LightningElement, wire } from 'lwc';
import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi';


import CONTRACT_OBJECT from '@salesforce/schema/Contract';
import CONTRACT_TYPES_FIELD from '@salesforce/schema/Contract.ContractTypes__c';


export default class GetPicklistValuesContract extends LightningElement {
    contrTId;
    handleChange;
    options;
    selectValue;

    @wire(getObjectInfo, {objectApiName : CONTRACT_OBJECT})
    contractInfo({data, error}){
        if(data){
            console.log(data);
            const rtIds=data.recordTypeInfos;
            this.contrTId=Object.keys(rtIds).find(w=>rtIds[w].name==='Renewal');
        }
        if(error){
            console.log(error);
        }
    }
    @wire(getPicklistValues,{fieldApiName: CONTRACT_TYPES_FIELD, recordTypeId:'$contrTId'})
    typePicklist({data, error}){
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