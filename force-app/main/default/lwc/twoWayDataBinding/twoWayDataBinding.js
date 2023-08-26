import { LightningElement } from 'lwc';

export default class TwoWayDataBinding extends LightningElement {
   
    studentName;
    fullName;
    title;

    getName(){
        this.studentName = "Local Property";
        stdName = "Alex Thomas";
        console.log(this.studentName + "Looks like this  ");
        console.log("this is the stdName => "+ stdName);
        return stdName;
    }

    handleChangeName(event){
        this.fullName= event.target.value;


    }

    handleChangeTitel(event){
        this.title = event.target.value;

    }



}