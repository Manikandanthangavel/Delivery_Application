import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import NAME from '@salesforce/schema/Customer__c.Name';
import LAST_NAME from '@salesforce/schema/Customer__c.Last_Name__c';
import PHONE from '@salesforce/schema/Customer__c.Phone__c';
import EMAIL from '@salesforce/schema/Customer__c.Email__c';
import STREET from '@salesforce/schema/Customer__c.Street__c';
import STATE from '@salesforce/schema/Customer__c.State__c';
import CITY from '@salesforce/schema/Customer__c.City__c';
import PINCODE from '@salesforce/schema/Customer__c.Pin_Code__c';
import COUNTRY from '@salesforce/schema/Customer__c.Country__c';
//import PICKUP_HUB from '@salesforce/schema/Customer__c.Pickup_Location__c';
import PRODUCT from '@salesforce/schema/Customer__c.Product_Name__c';
import LOCATION from '@salesforce/schema/Customer__c.Location__c';

import CURRENCY from '@salesforce/schema/Customer__c.Currency__c';
export default class CustomerDetails extends LightningElement
{
    fields = [NAME, LAST_NAME,CURRENCY,PHONE,EMAIL,STREET,STATE,CITY,PINCODE,COUNTRY,PRODUCT,LOCATION];
    handleSuccess(event) 
    {
        const evt = new ShowToastEvent({
            title: "Details created",
            message: "Record ID: " + event.detail.id,
            variant: "success"
        });
        this.dispatchEvent(evt);
    }

}