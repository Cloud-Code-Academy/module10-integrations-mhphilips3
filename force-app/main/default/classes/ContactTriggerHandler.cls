/**
 * ContactTriggerHandler class extends the TriggerHandler framework to handle Contact trigger events.
 * 
 * This class handles different trigger events on the Contact object:
 * - beforeInsert: Generates a random number (0 through 100)for the DummyJSON_Id__c Field when null.
 * - beforeUpdate: When (DummyJSON_Id__c > 100), call the getDummyJSONUserFromId API.
 * - afterInsert: Creates a follow-up task for newly created Opportunities.
 * 
 */


public with sharing class ContactTriggerHandler extends TriggerHandler {
    
    // Lists of new and old Contacts, and a map of old Contacts by Id for quick access in update triggers
    private List<Contact> newConList;
    
    // Constructor initializes the new Contact list
    public ContactTriggerHandler() {
        this.newConList = (List<Contact>)Trigger.new;
    }

    /**
 * beforeInsert handler
 * Generates a random value for DummyJSON_Id__c if none is provided during Contact insertion.
 * 
 * Business Rule: If a Contact is being inserted without a value for DummyJSON_Id__c, generate a random number between 0 and 100.
 */

/**
 * afterInsert handler
 * Calls the getDummyJSONUserFromId API based on the DummyJSON_Id__c value.
 * 
 * Business Rule: After inserting a Contact, if the DummyJSON_Id__c value is less than or equal to 100, initiate the getDummyJSONUserFromId API call.
 */

/**
 * afterUpdate handler
 * Calls the postCreateDummyJSONUser API based on the DummyJSON_Id__c value.
 * 
 * Business Rule: After updating a Contact, if the DummyJSON_Id__c value is greater than 100, initiate the postCreateDummyJSONUser API call.
 */    
}