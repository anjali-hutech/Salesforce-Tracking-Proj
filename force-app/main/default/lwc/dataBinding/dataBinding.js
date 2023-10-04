import { LightningElement } from 'lwc';

export default class DataBinding extends LightningElement {

  

    // firstName='';
    // lastName='';

    // handleChange(event)
    // {
    //     const field=event.target.name;
    //     if(field === 'fname')
    //     {
    //         this.firstName=event.target.value;
    //     }
    //     else if(field==='lname')
    //     {
    //         this.lastName=event.target.value;
    //     }
    // }


    // get uppercasedFullName()
    // {
    //     return '${this.firstName}  ${this.lastName}'.toUpperCase();
    // }

    // greeting='Anjali';

    // handleClick(event)
    // {
    //     this.greeting=this.template.querySelector("lightning-input").value;
    // }

    firstName='';
    lastName='';

    handleClick(event)
    {
        var input=this.template.querySelectorAll("lightning-input");

        input.forEach(function(element)
        {
            if(element.name=='fname')
            this.firstName=element.value;

            else if(element.name=='lname')
            this.lastName=element.value;
        }, this)
    }
}