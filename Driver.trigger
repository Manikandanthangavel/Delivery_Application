trigger Driver on Quotation__c (after insert) 
{
    DriverClass.TriggerMethod(Trigger.New);
}