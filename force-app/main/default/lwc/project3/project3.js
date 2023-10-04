import { LightningElement ,api,wire} from 'lwc';
import getContacts from '@salesforce/apex/ContactController.getContacts';
export default class Project3 extends LightningElement {
@api recordId;

@wire(getContacts,{accId:'$recordId'})
contacts;

get 
}