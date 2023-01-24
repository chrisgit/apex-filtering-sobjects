@IsTest
public class AccountTechnologyIteratorTest {
    @IsTest
    public static void given_EmptyAccountList_then_ReturnNothing() {
        List<Account> emptyList = new List<Account>();
        List<Account> iteratedAccounts = new List<Account>();

        AccountTechnologyIterator iterator = new AccountTechnologyIterator(emptyList);
        while (iterator.hasNext()) {
            iteratedAccounts.add(iterator.next());
        }

        System.assertEquals(0, iteratedAccounts.size(), 'AccountTechnology iterator returned items');
    }

    @IsTest
    public static void given_AllTechnologyAccounts_then_ReturnAll() {
        List<Account> allAccounts = new List<Account> {
            new Account(Name = 'Samsung', Industry = 'Technology'),
            new Account(Name = 'Dell', Industry = 'Technology'),
            new Account(Name = 'HP', Industry = 'Technology'),
            new Account(Name = 'Microsoft', Industry = 'Technology'),
            new Account(Name = 'MSI', Industry = 'Technology')
        };
        List<Account> iteratedAccounts = new List<Account>();
        AccountTechnologyIterator iterator = new AccountTechnologyIterator(allAccounts);

        while (iterator.hasNext()) {
            iteratedAccounts.add(iterator.next());
        }

        System.assertEquals(5, iteratedAccounts.size(), 'AccountTechnology iterator not filtered correctly');
    }

    @IsTest
    public static void given_NoTechnologyAccounts_then_ReturnsNothing() {
        List<Account> allAccounts = new List<Account> {
            new Account(Name = 'Samsung', Industry = 'Retail'),
            new Account(Name = 'Dell', Industry = 'Chemicals'),
            new Account(Name = 'HP', Industry = 'Manufacturing'),
            new Account(Name = 'Microsoft', Industry = 'Education'),
            new Account(Name = 'MSI', Industry = 'Healthcare')
        };
        List<Account> iteratedAccounts = new List<Account>();
        AccountTechnologyIterator iterator = new AccountTechnologyIterator(allAccounts);

        while (iterator.hasNext()) {
            iteratedAccounts.add(iterator.next());
        }

        System.assertEquals(0, iteratedAccounts.size(), 'AccountTechnology iterator not filtered correctly');
    }

    @IsTest
    public static void given_MixOfAccounts_then_OnlyTechnologyReturned() {
        List<Account> allAccounts = new List<Account> {
            new Account(Name = 'Samsung', Industry = 'Technology'),
            new Account(Name = 'Next', Industry = 'Retail'),
            new Account(Name = 'Foxconn', Industry = 'Manufacturing'),
            new Account(Name = 'Dell', Industry = 'Technology'),
            new Account(Name = 'Pfizzer', Industry = 'Chemicals'),
            new Account(Name = 'MSI', Industry = 'Technology')
        };
        List<Account> iteratedAccounts = new List<Account>();
        AccountTechnologyIterator iterator = new AccountTechnologyIterator(allAccounts);

        while (iterator.hasNext()) {
            iteratedAccounts.add(iterator.next());
        }

        System.assertEquals(3, iteratedAccounts.size(), 'AccountTechnology iterator not filtered correctly');
    }
}
