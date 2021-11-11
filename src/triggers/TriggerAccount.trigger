trigger TriggerAccount on Account (after insert, after update) {
	
    if(Trigger.isInsert){
        AccountController.createContact(trigger.new);
    }
}