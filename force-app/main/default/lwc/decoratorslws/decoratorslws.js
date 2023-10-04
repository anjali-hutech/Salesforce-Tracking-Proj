import { LightningElement , api,wire } from 'lwc';
import { getRecord,getFieldValue } from 'lightning/uiRecordApi';

// import NAME_FIELD from '@salesforce/schema/Account.Name';
// import PHONE_FIELD from '@salesforce/schema/Account.Phone';

export default class Decoratorslws extends LightningElement {
    
   @api recordId;

//    @wire(getRecord, {recordId:'$recoredId', fields:[NAME_FIELD,PHONE_FIELD]})
@wire(getRecord, {recordId:'$recoredId', fields:[Account.name,Account.phone]})

   record;
   get name()
   {
    return this.record.data ? getFieldValue(this.record.data ,Account.name) : '';
   }
   get phone()
   {
    return this.record.data ? getFieldValue(this.record.data , Account.phone) : '';
   }
}