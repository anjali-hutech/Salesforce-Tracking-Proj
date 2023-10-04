import { LightningElement ,api,wire} from 'lwc';
import getContacts from '@salesforce/apex/ContactController.getContacts';
import { getRecord } from 'lightning/uiRecordApi';
export default class WireAdapterDemo extends LightningElement {


    @api recordId;
    contacts;
    error;

    @wire(getRecord , {recordId:'$recordId', fields:'Account.Name'})
    record;

    @wire(getContacts , {accId:'$recordId'})
     wireContacts({error,data})
     {
        if(data)
        {
            this.contacts=data;
            this.error=undefined;
        }
        else if(error)
        {
            this.error=error;
            this.contacts=undefined;
        }
     }

    get name()
    {
        return this.record.data.fields.Name.value;
    }



}