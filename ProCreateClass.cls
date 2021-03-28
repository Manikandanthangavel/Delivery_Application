public class ProCreateClass 
{
    public static void TriggerMethod(List<Customer__c> CList)
    {
        List<String> ProdName=new List<String>();
        List<Customer_Order__c> Orders=new List<Customer_Order__c>();
        for(Customer__c customer:CList)
        {
            ProdName.add(customer.Product_Name__c);
        }
        List<Company_Products__c> productsList=[select Id, Name,Price__c from Company_Products__c where Name in: ProdName];
        for(Customer__c customer:CList)
        {
            for(Company_Products__c product:productsList)
            {
                String FullName=customer.Name+''+customer.Last_Name__c;
                String OrderName='Order for '+customer.Name + customer.Last_Name__c;
                String Address=customer.Street__c +','+customer.City__c +'-'+ customer.Pin_Code__c+','+customer.State__c+','+customer.Country__c;
                Customer_Order__c Order=new Customer_Order__c(Name=OrderName,Customer__c=customer.Id,Product__c=product.Id,Stage__c='New-Booked',Close_Date__c=system.today()+7,
                                                              Customer_Fullname__c=FullName,Address__c=Address,
                                                              Product_Name__c=product.Name,Customer_Email__c=customer.Email__c);
                Orders.add(Order);
            }
            
        }
        insert Orders;
    }
}