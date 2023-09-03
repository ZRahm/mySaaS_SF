import { LightningElement, wire } from 'lwc';
import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi';

import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';

export default class GetPicklistValuesAccount extends LightningElement {

    //Create a component that shows the picklist values of the vendor field on Account Object.
    //What tools am I going to use for this story?
    //Since I am going to need the recordTypeId, I need to get if by using getObjectInfo adapter first, then I will use my getPicklistValues adapter to grab the picklist values of Vendor record type.

    vendorRtId;
    selectValue;
    options=[];
    customerRtId;
    selectValueCustomer;
    optionsCustomer;
    
    @wire(getObjectInfo,{objectApiName: ACCOUNT_OBJECT})

    getPicklistValuesAccount({data,error}){
        if(data){
            console.log(data);
            
            const recordTypesMap = data.recordTypeInfos;
            console.log(recordTypesMap);
            this.vendorRtId = Object.keys(recordTypesMap).find(w=>recordTypesMap[w].name==='Vendor');
            console.log('The Vendor Record Type Id is: ' + this.vendorRtId);
            this.customerRtId = data.defaultRecordTypeId; // short way of getting RT - skipping the map,find method
            console.log('The Customer Record Type is : ' +this.customerRtId);
            
        }
        if(error){
            console.log(error);
        } 
    }

    //getPicklistValues as adapters
    //Whenever I need to pass my local property inside of Wire Services, I need to make my property reactive since wire services are reactive as well. How to make it - 
    // Put your local property inside of a single quotation, then put a dolar sign in front of your local local property inside of your quotation mark '$localProperty'.

    @wire(getPicklistValues,{fieldApiName: INDUSTRY_FIELD, recordTypeId: '$vendorRtId'})
    industryPicklist({data, error}){
        if(data){
            console.log(data);
           this.options = this.picklistGenerator(data);


        }
        if(error){
            console.log(error);

        }
    }

    //getPicklistValues for Customer 
    @wire(getPicklistValues,{fieldApiName: INDUSTRY_FIELD, recordTypeId: '$customerRtId'}) // here it is only taking customer RT
    industryPicklistCustomer({data, error}){
        if(data){
            console.log(data);
           this.optionsCustomer = this.picklistGenerator(data);


        }
        if(error){
            console.log(error);

        }
    }

    handleChange(event){
        this.selectValue = event.target.value;

    }
    handleChangeCustomer(event){
        this.selectValueCustomer = event.target.value;
    }

    //I will use a map method here whihc creates a new array from the calling a function for every array element. map() does not change the original array. 

    picklistGenerator(data){
        return data.values.map(w=>({ // w is iterator = value - the array name.
            label : w.label, 
            value : w.value
        }));
    }


}