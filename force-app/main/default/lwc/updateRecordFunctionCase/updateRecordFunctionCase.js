import { updateRecord } from 'lightning/uiRecordApi';
import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class UpdateRecordFunctionCase extends LightningElement {

recordId= '500Dn000009QtmGIAS';
formData = {};

changeHandler(event){
    const {name,value} = event.target;
    this.formData['Id'] = this.recordId;
    this.formData[name]=value;
}

updateHandler(){
    const recordInput = {
        fields : this.formData
    }
    updateRecord(recordInput)
    .then(result=>{
        console.log(result);
        this.successMessage();
        this.template.querySelector('form.caseForm').reset();
        this.formData = {};
    })
    .catch(error=>{
        console.log(error);
        this.errorMessage();
    })

}

cancelUpdateHandler(){
    this.template.querySelector('form.caseForm').reset();
            this.formData = {};
            this.infoMessage();
}

successMessage(){
    const showSuccessMsg = new ShowToastEvent({
        title : 'SUCCESS!!!',
        message : 'The Case record has been updated successfully!',
        variant : 'success',
        mode : 'sticky'
    });
    this.dispatchEvent(showSuccessMsg);
}
errorMessage(){
    const showErrorMsg = new ShowToastEvent({
        title : 'ERROR!!!',
        message : 'The Case record has NOT been updated. Please check your error!',
        variant : 'error',
        mode : 'sticky'
    });
    this.dispatchEvent(showErrorMsg);
}
infoMessage(){
    const showInfoMsg = new ShowToastEvent({
        title : 'INFORMATION!',
        message : 'The Case record saving process has been cancelled. The contact record has NOT been created!',
        variant : 'info',
        mode : 'pester'
    });
    this.dispatchEvent(showInfoMsg);
}

}