trigger DriverOrderLimitUpdateTrigger on Customer_Order__c (after update) 
{
    DriverOrderLimitUpdateClass.TriggerMethod(Trigger.New);
}