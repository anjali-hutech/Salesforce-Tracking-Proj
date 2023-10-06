import { LightningElement } from 'lwc';

export default class LeaveTracker extends LightningElement {


    refreshleaverequests(event)
    {
this.refreshleaverequests.myLeavesComp.refreshGrid();
    }
}