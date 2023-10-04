public class ShopifySalesforceIntegration {
    public static void processFormSubmission(String jsonPayload) {
        FormJson submission = (FormJson) JSON.deserialize(jsonPayload, FormJson.class);

        if (submission != null && submission.customerName != null && submission.customerEmail != null) {
            Contact contact = new Contact();
            contact.FirstName = submission.customerName.substringBefore(' ');
            contact.LastName = submission.customerName.substringAfter(' ');
            contact.Email = submission.customerEmail;

            insert contact;
        }
    }
}