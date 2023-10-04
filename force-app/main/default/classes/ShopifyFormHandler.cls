public class ShopifyFormHandler {
   public static void handleFormSubmission(String customerName, String customerEmail) {
        FormJson submission = new FormJson();
        submission.customerName = customerName;
        submission.customerEmail = customerEmail;

        String jsonPayload = JSON.serialize(submission);
        ShopifySalesforceIntegration.processFormSubmission(jsonPayload);
    }

}