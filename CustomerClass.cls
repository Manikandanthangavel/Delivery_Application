
global with sharing class CustomerClass {
    
    public Customer__c mmm {get;set;}
    public Quotation__c nnn {get;set;}
    public Customer_Order__c xxx {get;set;}
   
    public CustomerClass(){
        mmm = [Select Name,
                Email__c,
                Phone__c,
                Street__c,
                State__c
                from Customer__c LIMIT 1];

                nnn = [Select
                GST__c,
                Price__c,
                Quotation_Number__c,
                Total__c,Extra_Shipping_Charges__c
                from Quotation__c LIMIT 1];

                xxx= [Select
                Driver_Asigned__c,Product_Name__c,Product_Price__c
                from Customer_Order__c LIMIT 1];

    }
}