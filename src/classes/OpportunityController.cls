public class OpportunityController {

    public static void updateAccountRating(List<opportunity> opportunidades){
        Set<id> Accountids = new set<id>();
        List<Account> Accounts = new List<Account>();

        for(opportunity opp:opportunidades){
        	if(opp.StageName =='Closed Won'){
            	AccountIds.add(opp.AccountId);
            }
        }
    
        List<Account> account  = [Select id,Rating from Account where Id IN: AccountIds];
        if(account != null){
        	for(Account acc: account){
              acc.Rating ='Hot';
              Accounts.add(acc);
           }
        }
        update Accounts;
    }
}