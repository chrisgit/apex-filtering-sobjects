public inherited sharing class AccountsIterable implements Iterable<Account> {
    public Iterator<Account> iterator() {
        return new AccountTechnologyIterator(getAllAccounts());
    }

    private List<Account> getAllAccounts() {
        // Would normally run a SOQL but hardcoded for simplicity
        return new List<Account> {
            new Account(Name = 'Acme Clothing', Industry = 'Retail'),
            new Account(Name = 'Acme Components', Industry = 'Technology'),
            new Account(Name = 'Acme Containers', Industry = 'Shipping'),
            new Account(Name = 'Acme Biochemicals', Industry = 'Chemicals'),
            new Account(Name = 'Acme Monitors', Industry = 'Technology'),
            new Account(Name = 'Acme Bank', Industry = 'Banking'),
            new Account(Name = 'Acme Project Construction', Industry = 'Engineering'),
            new Account(Name = 'Acme Aero Parts', Industry = 'Manufacturing'),
            new Account(Name = 'Acme Processors', Industry = 'Technology')
        };
    }
}
