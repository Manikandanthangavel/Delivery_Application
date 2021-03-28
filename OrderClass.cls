public with sharing class OrderClass
{
    @AuraEnabled(cacheable=true)
    public static List<Company_Products__c> ProductList()
    {
        return [select Id,Name,	In_Stock__c,Price__c from Company_Products__c];
    }    
}