trigger QuoteCreate on Customer_Order__c (after insert) 
{
    QuoteClass.TriggerMethod(Trigger.New);
    
}