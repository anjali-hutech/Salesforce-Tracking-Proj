import { LightningElement ,api} from 'lwc';

export default class Lwc1 extends LightningElement {
    message='@api decorator';

   @api recordId;
}