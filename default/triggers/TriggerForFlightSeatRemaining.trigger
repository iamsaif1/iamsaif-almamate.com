trigger TriggerForFlightSeatRemaining on Book_Ticket__c (after insert) 
{
set<id> bookingid=new set<id>();
    for(Book_Ticket__c bt:trigger.new)
    {
      bookingid.add(bt.Flight_Name__c);  
    }
list<flights__c> flightlist=new list<flights__c>([select id,Total_Bookings__c,Seats_Available__c from flights__c where id IN:bookingid]);
    for(flights__c f:flightlist)
    {
        for(Book_Ticket__c bc:trigger.new)
        {
            if(f.id==bc.Flight_Name__c)
            {
              f.Seats_Available__c= f.Seats_Available__c-bc.Select_Seats__c ;  
            }
        }
    }
    update flightlist;
}