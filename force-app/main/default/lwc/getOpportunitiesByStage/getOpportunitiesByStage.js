import { LightningElement, wire } from 'lwc';
import getOppsByStage from '@salesforce/apex/OpportunityController.getOppsByStage';

const COLUMNS = [
    {label : "Opportunity Name", fieldName : "Name", type : "text"},
    {label : "Amount", fieldName : "Amount", type : "currency"},
    {label : "Type", fieldName : "Type", type : "text"},
    {label : "Stage Name", fieldName : "StageName", type : "text"}
];
export default class GetOpportunitiesByStage extends LightningElement {
 
    columns = COLUMNS;
    stgName = 'Closed Won';

    changeHandler(event){
        this.stgName = event.target.value;
    }

    @wire(getOppsByStage, {stage: '$stgName'})// var has to be reactice since wire services are reactive as well
    opportunities;

}