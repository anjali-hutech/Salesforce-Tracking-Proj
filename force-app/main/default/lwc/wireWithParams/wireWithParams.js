import { LightningElement , wire} from 'lwc';
import getData from '@salesforce/apex/getAccountData.getData'
export default class WireWithParams extends LightningElement {
		
		result;
		searchkey='';
		@wire(getData, {name:'$searchkey'})
		showAccountdata({error,data})
		{
		if(data)
		{
				this.result=data;	
		}
		}
		else(error)
		{
				console.log('Error' , error);
		}
		
		handleSearch(event)
		{
				 this.searchkey=event.target.value;
		}
}