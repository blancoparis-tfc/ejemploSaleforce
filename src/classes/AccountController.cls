public class AccountController {
	
    public static void createContact(List<Account> cuentas){
        List<Contact> ct = new List <Contact>();
        for(Account acc : cuentas){

            Contact c = new Contact(LastName = acc.name,
                AccountId=acc.id,
                Fax=acc.Fax,
                MailingStreet=acc.BillingStreet,
                MailingCity=acc.BillingCity,
                MailingState=acc.BillingState,
                MailingPostalCode=acc.BillingPostalCode,
                MailingCountry=acc.BillingCountry,
                Phone=acc.Phone
                               );
			ct.add(c);
        }
        insert ct; 

    }
}