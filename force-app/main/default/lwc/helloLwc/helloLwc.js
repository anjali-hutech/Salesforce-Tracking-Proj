import { LightningElement,api } from 'lwc';

export default class HelloLwc extends LightningElement {

    message="public property";
    @api recordId;
    @api accountName;
}