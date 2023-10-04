import { LightningElement ,api,wire} from 'lwc';
import { getRecord,getFieldValue } from 'lightning/uiRecordApi';
// import NAME_FIELD from '@salesforce/schema/Account.Name';
// import PHONE_FIELD from '@salesforce/schema/Account.Phone';
export default class Project2 extends LightningElement {


    @api recordId;
    Data='hello';

    @wire(getRecord,{recordId:'$recordId',fields:['Account.Name','Account.Phone']})
    record;

    get name(){
        return this.record.data.fields.Name.value;
    }

    get phone(){
        return this.record.data.fields.Phone.value;
    }
}