@isTest
public class ShopifyCustomerJSON_Test {
	// This test method should give 100% coverage
	static testMethod void testParse() {
		String json = '{'+
		'    \"customers\": ['+
		'        {'+
		'            \"id\": 4457570762951,'+
		'            \"email\": \"justin.wills@g2atechgroup.com\",'+
		'            \"accepts_marketing\": false,'+
		'            \"created_at\": \"2020-11-20T13:34:56-05:00\",'+
		'            \"updated_at\": \"2020-11-20T13:34:56-05:00\",'+
		'            \"first_name\": \"Test\",'+
		'            \"last_name\": \"Test\",'+
		'            \"orders_count\": 0,'+
		'            \"state\": \"disabled\",'+
		'            \"total_spent\": \"0.00\",'+
		'            \"last_order_id\": null,'+
		'            \"note\": \"\",'+
		'            \"verified_email\": true,'+
		'            \"multipass_identifier\": null,'+
		'            \"tax_exempt\": false,'+
		'            \"phone\": null,'+
		'            \"tags\": \"\",'+
		'            \"last_order_name\": null,'+
		'            \"currency\": \"USD\",'+
		'            \"addresses\": [],'+
		'            \"accepts_marketing_updated_at\": \"2020-11-20T13:34:56-05:00\",'+
		'            \"marketing_opt_in_level\": null,'+
		'            \"tax_exemptions\": [],'+
		'            \"admin_graphql_api_id\": \"gid://shopify/Customer/4457570762951\"'+
		'        },'+
		'        {'+
		'            \"id\": 4456556069063,'+
		'            \"email\": \"justin.wills@g2technologies.com\",'+
		'            \"accepts_marketing\": false,'+
		'            \"created_at\": \"2020-11-20T01:21:03-05:00\",'+
		'            \"updated_at\": \"2020-11-20T01:21:03-05:00\",'+
		'            \"first_name\": \"Justin\",'+
		'            \"last_name\": \"Wills\",'+
		'            \"orders_count\": 0,'+
		'            \"state\": \"disabled\",'+
		'            \"total_spent\": \"0.00\",'+
		'            \"last_order_id\": null,'+
		'            \"note\": \"\",'+
		'            \"verified_email\": true,'+
		'            \"multipass_identifier\": null,'+
		'            \"tax_exempt\": false,'+
		'            \"phone\": null,'+
		'            \"tags\": \"\",'+
		'            \"last_order_name\": null,'+
		'            \"currency\": \"USD\",'+
		'            \"addresses\": [],'+
		'            \"accepts_marketing_updated_at\": \"2020-11-20T01:21:03-05:00\",'+
		'            \"marketing_opt_in_level\": null,'+
		'            \"tax_exemptions\": [],'+
		'            \"admin_graphql_api_id\": \"gid://shopify/Customer/4456556069063\"'+
		'        }'+
		'    ]'+
		'}';
		ShopifyCustomerJSON r = ShopifyCustomerJSON.parse(json);
		System.assert(r != null);

		json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
		ShopifyCustomerJSON.Addresses objAddresses = new ShopifyCustomerJSON.Addresses(System.JSON.createParser(json));
		System.assert(objAddresses != null);

		json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
		ShopifyCustomerJSON.Customers objCustomers = new ShopifyCustomerJSON.Customers(System.JSON.createParser(json));
		System.assert(objCustomers != null);
		System.assert(objCustomers.id == null);
		System.assert(objCustomers.email == null);
		System.assert(objCustomers.accepts_marketing == null);
		System.assert(objCustomers.created_at == null);
		System.assert(objCustomers.updated_at == null);
		System.assert(objCustomers.first_name == null);
		System.assert(objCustomers.last_name == null);
		System.assert(objCustomers.orders_count == null);
		System.assert(objCustomers.state == null);
		System.assert(objCustomers.total_spent == null);
		System.assert(objCustomers.last_order_id == null);
		System.assert(objCustomers.note == null);
		System.assert(objCustomers.verified_email == null);
		System.assert(objCustomers.multipass_identifier == null);
		System.assert(objCustomers.tax_exempt == null);
		System.assert(objCustomers.phone == null);
		System.assert(objCustomers.tags == null);
		System.assert(objCustomers.last_order_name == null);
		System.assert(objCustomers.currency_var == null);
		System.assert(objCustomers.addresses == null);
		System.assert(objCustomers.accepts_marketing_updated_at == null);
		System.assert(objCustomers.marketing_opt_in_level == null);
		System.assert(objCustomers.tax_exemptions == null);
		System.assert(objCustomers.admin_graphql_api_id == null);

		json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
		ShopifyCustomerJSON objShopifyCustomerJSON = new ShopifyCustomerJSON(System.JSON.createParser(json));
		System.assert(objShopifyCustomerJSON != null);
		System.assert(objShopifyCustomerJSON.customers == null);
	}
}