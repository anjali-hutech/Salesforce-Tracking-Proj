public with sharing class SeerbitPaymentController {
    
    @AuraEnabled
    public static Map<String, String> generateJWTAndPaymentLink(Decimal amount, String email) {
        // Replace these with your actual Seerbit API credentials
        String seerbitPublishableKey = 'SBTESTSECK_ldcxM3yzWP3kEF070idyi7FuNh5iruVJ2CCsfD3v';
        String seerbitSecretKey = 'SBTESTPUBK_SvMp686DZ7oc727S6qxvn3qFt4bI3ARi';

        // Generate JWT token
        String jwtToken = generateJWT(seerbitPublishableKey, seerbitSecretKey);

        // Make API request to Seerbit and get the payment link
        String paymentLink = makeSeerbitAPIRequest(jwtToken, amount, email);

        // Return the payment link
        Map<String, String> result = new Map<String, String>();
        result.put('paymentLink', paymentLink);
        return result;
    }

    // Generate the JWT token using the Seerbit credentials
    private static String generateJWT(String publishableKey, String secretKey) {
        // Placeholder method for generating the JWT token
        // Replace this with the actual implementation using your chosen JWT library or custom logic
        // For example:
        String jwtToken = 'YOUR_GENERATED_JWT_TOKEN';
        return jwtToken;
    }

    // Implement the methods to make the API request
    // This method can be similar to the one shown in the previous examples
    public static String makeSeerbitAPIRequest(String jwtToken, Decimal amount, String email) {
        // Implement the logic to make the API request to Seerbit's payment gateway
        // Include the JWT token and payment-related data in the request body
        // Get the payment link from the API response
        // For demonstration purposes, we'll use a placeholder URL here
        String seerbitAPIEndpoint = 'https://api.seerbit.com/v1/checkout/initialize';
        String paymentLink = seerbitAPIEndpoint + '?jwt=' + jwtToken + '&amount=' + amount + '&email=' + email;

        return paymentLink;
    }
}