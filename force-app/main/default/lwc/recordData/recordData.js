import { LightningElement , wire} from 'lwc';
import getContactData from '@salesforce/apex/getApexData.getContactData'
export default class RecordData extends LightningElement {

    viewData;
    @wire(getContactData)
    showContacts({error,data}){
        if(data){
            this.viewData=data;
        }
        else if(error)
        {
            console.log('Errors ' , error);
        }
    }
		 @wire(getContactData)
    contactData;
}