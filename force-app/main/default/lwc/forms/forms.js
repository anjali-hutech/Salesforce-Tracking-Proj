import { LightningElement , track} from 'lwc';

export default class Forms extends LightningElement {
    name;
    email;
    password;
    
    handleChange(event)
    {
        const res=event.target.name;
        if(res=='name')
        {
            this.name=event.target.value;
        }
        if(res=='email')
        {
            this.email=event.target.value;
        }
        if(res=='password')
        {
            this.password=event.target.value;
        }
    }
      
    showResult=false;
    hadleClick()
    {
     this.showResult=true;
    }

}