import { LightningElement, track } from 'lwc';

export default class TrackProperty extends LightningElement {

     @track contact = {
        name : "Steve Jobs",
        location : "US",
        company : "Apple"
    }

    handleChange(event){
        this.contact.location = event.target.value;

    }

}