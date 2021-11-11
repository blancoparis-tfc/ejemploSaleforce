trigger TriggerOpportunity on Opportunity (after insert,after update) {
	
    if(Trigger.isInsert){
        OpportunityController.updateAccountRating(trigger.new);
    }else if(Trigger.isUpdate){
        OpportunityController.updateAccountRating(trigger.new);
    }
}