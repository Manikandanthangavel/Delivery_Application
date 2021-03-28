trigger Procreate on Customer__c (after insert) 
{
    ProCreateClass.TriggerMethod(Trigger.new);
}