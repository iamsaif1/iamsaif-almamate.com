trigger ConvertingLead on Lead(after insert,after update)
{ 
LeadStatusHandler.ConvertingLeads(trigger.new);
}