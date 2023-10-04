public class CustomerRequest {
public class Addresses{
		public long id {get;set;} 
		public Long customer_id {get;set;} 
		public String first_name {get;set;} 
		public String last_name {get;set;} 
		public Object company {get;set;} 
		public String address1 {get;set;} 
		public String address2 {get;set;} 
		public String city {get;set;} 
		public String province {get;set;} 
		public String country {get;set;} 
		public String zip {get;set;} 
		public String phone {get;set;} 
		public String province_code {get;set;} 
		public String country_code {get;set;} 
		public String country_name {get;set;} 
		public Boolean default_Z {get;set;} // in json: default
	}
	
	public class Default_address {
		public String address1 {get;set;} 
		public String address2 {get;set;} 
		public String city {get;set;} 
		public Object company {get;set;} 
		public String country {get;set;} 
		public String first_name {get;set;} 
		public Integer id {get;set;} 
		public String last_name {get;set;} 
		public String phone {get;set;} 
		public String province {get;set;} 
		public String zip {get;set;} 
		public String province_code {get;set;} 
		public String country_code {get;set;} 
		public String country_name {get;set;} 
		public Boolean default_Z {get;set;} // in json: default
	}
	
	public Boolean accepts_marketing {get;set;} 
	public String accepts_marketing_updated_at {get;set;} 
	public List<Addresses> addresses {get;set;} 
	public String currency_Z {get;set;} // in json: currency
	public String created_at {get;set;} 
	public Default_address default_address {get;set;} 
	public String email {get;set;} 
	public Email_marketing_consent email_marketing_consent {get;set;} 
	public String first_name {get;set;} 
	public long id {get;set;} 
	public String last_name {get;set;} 
	public Long last_order_id {get;set;} 
	public String last_order_name {get;set;} 
	public Metafield metafield {get;set;} 
	public String marketing_opt_in_level {get;set;} 
	public Object multipass_identifier {get;set;} 
	public String note {get;set;} 
	public Integer orders_count {get;set;} 
	public String password {get;set;} 
	public String password_confirmation {get;set;} 
	public String phone {get;set;} 
	public Sms_marketing_consent sms_marketing_consent {get;set;} 
	public String state {get;set;} 
	public String tags {get;set;} 
	public Boolean tax_exempt {get;set;} 
	public List<String> tax_exemptions {get;set;} 
	public String total_spent {get;set;} 
	public String updated_at {get;set;} 
	public Boolean verified_email {get;set;} 
	
	public class Sms_marketing_consent {
		public String state {get;set;} 
		public String opt_in_level {get;set;} 
		public String consent_updated_at {get;set;} 
		public String consent_collected_from {get;set;} 
	}
	
	public class Metafield {
		public String key {get;set;} 
		public String namespace {get;set;} 
		public String value {get;set;} 
		public String type {get;set;} 
	}
	
	public class Email_marketing_consent {
		public String state {get;set;} 
		public String opt_in_level {get;set;} 
		public String consent_updated_at {get;set;} 
	}
    
	public static CustomerRequest parse(String json) {
		return (CustomerRequest) System.JSON.deserialize(json, CustomerRequest.class);
	}
}