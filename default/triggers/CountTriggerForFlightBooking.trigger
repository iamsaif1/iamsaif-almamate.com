trigger CountTriggerForFlightBooking on Book_Ticket__c (after insert,before delete) 
{
if(trigger.isinsert)
{
    if(trigger.isafter)
    {
        
set<id> bookingid=new set<id>();
    for(Book_Ticket__c bt:trigger.new)
    {
      bookingid.add(bt.Flight_Name__c);  
    }
list<flights__c> flightlist=new list<flights__c>([select id,Total_Bookings__c from flights__c where id IN:bookingid]);
    for(flights__c f:flightlist)
    {
        for(Book_Ticket__c bc:trigger.new)
        {
            if(f.id==bc.Flight_Name__c)
            {
              f.Total_Bookings__c= f.Total_Bookings__c+1 ;  
            }
        }
    }
    update flightlist;
}
}
    if(trigger.isdelete)
    {
        if(trigger.isbefore)
        {
         set<id> bookingid=new set<id>();
    for(Book_Ticket__c bt:trigger.old)
    {
      bookingid.add(bt.Flight_Name__c);  
    }
list<flights__c> flightlist=new list<flights__c>([select id,Total_Bookings__c from flights__c where id IN:bookingid]);
    for(flights__c f:flightlist)
    {
        for(Book_Ticket__c bc:trigger.old)
        {
            if(f.id==bc.Flight_Name__c)
            {
              f.Total_Bookings__c= f.Total_Bookings__c-1 ;  
            }
        }
    }
   update flightlist;
        }
    }
}