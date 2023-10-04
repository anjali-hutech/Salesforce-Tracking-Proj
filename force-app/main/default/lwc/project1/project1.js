import { LightningElement , api} from 'lwc';


export default class Project1 extends LightningElement {
    @api total=200;
    @api totalSize=10;


    get totalPages(){
        return Math.ceil(this.total/this.totalSize);
    }

}