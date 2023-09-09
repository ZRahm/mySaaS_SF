import { deleteRecord } from 'lightning/uiRecordApi';
import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class DeleteRecordFunctionCase extends LightningElement {

    recordId; 
    //"500Dn000009QtmGIAS";

    changeHandler(event){
        this.recordId=event.target.value;
    }

    deleteCaseRecord(event){
        deleteRecord(this.recordId)
        .then(result=>{
            console.log(result);
            this.successMessage();
            this.template.querySelector('form.deleteCase').reset();

        })
        .catch(error=>{
            console.log(error);
            this.errorMessage();
        })
    }

    successMessage(){
        const successToastMsg = new ShowToastEvent({
            title :'SUCCESS!',
            message : 'You have successfully deleted the Case Record!',
            variant : 'success',
            mode : 'pester'
    });
    this.dispatchEvent(successToastMsg);
    }

    errorMessage(){
        const errorToastMsg = new ShowToastEvent({
            title :'ERROR!',
            message : 'Your record has NOT been deleted!',
            variant : 'error',
            mode : 'sticky'
    });
    this.dispatchEvent(errorToastMsg);
    }



}