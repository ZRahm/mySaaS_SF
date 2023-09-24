import { LightningElement } from 'lwc';
import searchContacts from '@salesforce/apex/ContactController.searchContacts';

const COLUMNS = [
    {label : "First Name", fieldName:"FirstName", type : "text"},
    {label : "Last Name", fieldName:"LastName", type : "text"},
    {label : "Email", fieldName:"Email", type : "email"},
    {label : "Phone", fieldName : "Phone", type : "phone"},
    {label : "Title", fieldName : "Title", type : "title"}
]

export default class P2cParentActionParent extends LightningElement {

    columns = COLUMNS;
    searchName;
    contacts;
    error;

    changeHanlder(event){
        this.searchName = event.target.value;
        searchContacts({searchKey: this.searchName})
            .then(result=>{
                console.log(result);
                this.contacts = result;
            })
            .catch(error=>{
                console.log(error);
                this.error = error;

            })

    }

}