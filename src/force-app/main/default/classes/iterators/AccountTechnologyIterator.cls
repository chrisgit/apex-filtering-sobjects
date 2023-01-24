public with sharing class AccountTechnologyIterator implements Iterator<Account> {
    private List<Account> allAccounts;
    private Integer currentIndex = 0;

    public AccountTechnologyIterator(List<Account> accounts) {
        this.allAccounts = accounts;
    }

    public boolean hasNext() {
        for (; currentIndex < allAccounts.size(); currentIndex++) {
            Account acc = allAccounts.get(currentIndex);
            if (acc.Industry == 'Technology') {
                return true;
            }
        }
        return false;
    }

    public Account next() {
        if (hasNext()) {
            return allAccounts.get(currentIndex++);
        } else {
            throw new NoSuchElementException();
        }
    }    
}
