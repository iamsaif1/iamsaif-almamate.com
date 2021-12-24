trigger IsContextTrigger on Account (before insert,after insert,before delete,after delete) 
{
if(trigger.isinsert)
{
    if(trigger.isbefore)
    {
        system.debug('1');
    }
    else if (trigger.isafter)
    {
        system.debug('2');
    }
}
    else if(trigger.isdelete)
    {
        if(trigger.isbefore)
        {
            system.debug('3');
        }
        else if(trigger.isafter)
        {
            system.debug('4');
        }
    }
}