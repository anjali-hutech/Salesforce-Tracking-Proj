import { LightningElement, track } from 'lwc';

export default class SeerbitPayment extends LightningElement {
  @track amount = 0;
  @track email = '';

  handleAmountChange(event) {
    this.amount = event.target.value;
  }

  handleEmailChange(event) {
    this.email = event.target.value;
  }

  handleMakePayment() {
    // Call an Apex method to generate the JWT token and get the payment link
    // Replace 'generateJWTAndPaymentLink' with the actual Apex method name
    generateJWTAndPaymentLink({ amount: this.amount, email: this.email })
      .then((result) => {
        // Redirect the user to the payment link
        window.location.href = result.paymentLink;
      })
      .catch((error) => {
        // Handle any errors
        console.error('Error: ', error);
      });
  }
}