import { LightningElement } from 'lwc';

export default class ConditionRendering extends LightningElement {

    areDetailsVisible=false;

    handleChange(event)
    {
        this.areDetailsVisible=event.target.checked;
    }
}