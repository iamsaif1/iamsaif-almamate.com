trigger oppclosedate on Opportunity (before insert) {
    for(opportunity opp:trigger.new){
        if(opp.CloseDate<=date.today()){
            opp.addError('Please Enter Future Close Date');
        }
        
    }

}