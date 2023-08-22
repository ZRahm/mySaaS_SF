import { LightningElement } from 'lwc';

export default class HelloWorld extends LightningElement {
      // containers in JS are called properties. There are 2 types: Local and Public
      //Local - Variables that are available only in this component
      //Public Properties: vars that are available for external component as well. We will focus on this in chapter 5. component communication

       name = "Salesforce Developer";
       title = "Salesforce DEv with Certificate";
       experience = 3; 
       fruits = ["apple", "banana", "pear", "orange"];
       location = {
        city : "Boston",
        state : "MA",
        postalCode : "01234"
       }






}