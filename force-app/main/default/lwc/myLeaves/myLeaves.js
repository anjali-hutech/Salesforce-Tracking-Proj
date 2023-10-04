import { LightningElement , wire} from 'lwc';
import getMyLeaves from '@salesforce/apex/LeaveRequestController.getMyLeaves';

const COLUMNS = [
    {label:'Request Id', fieldName: 'Name', cellAttributes:{class:{fildsName:'cellClass'}}},
    {label:'From Date' , fieldName :'From_Date__c', cellAttributes:{class:{fildsName:'cellClass'}}},
    {label:'To Date' , fieldName:'To_Date__c', cellAttributes:{class:{fildsName:'cellClass'}}},
    {label:'Reason' , fieldName:'Reason__c', cellAttributes:{class:{fildsName:'cellClass'}}},
    {label:'Status' , fieldName:'Status__c', cellAttributes:{class:{fildsName:'cellClass'}}},
    {label:'Manager Comment' , fieldName:'Manager_Comment__c', cellAttributes:{class:{fildsName:'cellClass'}}},
    {
        type:"button", typeAttributes:{
            label:'Edit',
            name:'Edit',
            title:'Edit',
            value:'edit',
            disabled:{fieldName:'isEditDisabled'}
        },cellAttributes:{class:{fildsName:'cellClass'}},
    }

];
export default class MyLeaves extends LightningElement {
    columns=COLUMNS;
    myLeaves=[];
    myLeavesWireResult;

    @wire(getMyLeaves)
    wiredMyLeaves(result)
    {
        this.myLeavesWireResult = result;
        if (result.data) {
            this.myLeaves = result.data.map(a => ({
                ...a,
                cellClass: a.Status__c == 'Approved' ? 'slds-theme_success' : a.Status__c == 'Rejected' ? 'slds-theme_warning' : '',
                isEditDisabled: a.Status__c != 'Pending'
            }));
        }
        if (result.error) {
            console.log('Error occured while fetching my leaves- ', result.error);
        }
    }

    get noRecordsFound()
    {
        return this.myLeaves.length ==0;
    }

}