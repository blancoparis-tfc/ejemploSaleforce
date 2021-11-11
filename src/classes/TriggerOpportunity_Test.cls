@istest
public class TriggerOpportunity_Test {
    
	public static testmethod void triggerTest(){
	//link account with opportunity
		account acc = new account();
		acc.name='test';
		insert acc;
		
		account acc1 = new account();
		acc1.name='test1';
		insert acc1;
		
		opportunity opp = new opportunity();
		opp.name='test opp';
		opp.stagename='closed won';
        opp.CloseDate = system.today();
		opp.AccountId = acc.id;
		insert opp;
		
		opportunity opp1 = new opportunity();
		opp1.name='test opp';
		opp1.stagename='closed won';
        opp1.CloseDate = system.today();
		opp1.AccountId = acc1.id;
		insert opp1;
 
		test.startTest();  
		List<Account> cuentas = [Select id,rating from account where id =: opp.AccountId];
		system.assertequals(cuentas[0].Rating,'Hot');
		test.stopTest();
	}
}