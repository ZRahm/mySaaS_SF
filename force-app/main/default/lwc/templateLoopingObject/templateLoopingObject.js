import { LightningElement } from 'lwc';

export default class TemplateLoopingObject extends LightningElement {

    //to store  object inside the array
    accounts = [
        {
            id: 100,
            name: "TechProEd",
            type : "Software Education" 

        },//this is 1 object
        {
            id : 200,
            name : "Universal Containers", 
            type : "Trailhead"
        },
        {
            id : 300,
            name : "Ursa Major Solar", 
            type : "Solar Company"
        }

    ];



}