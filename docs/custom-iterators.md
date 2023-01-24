Custom Iterators
---------------

Whilst not strictly a filtering mechanism custom iterators can be used to filter information.

The filter can be applied by hard coded rules or pass an instance of a class that will evaluate the filter expresion or something entirely different again! An iterator must extend the built in Apex iterator class and have at least two methods
- hasNext(), which returns true or false depending on whether to collection has any more elements
- next(), returns the next item in the collection or throws NoSuchElementException if all elelments have been iterated

Custom iterators can be used with batchable apex by returning the iterator from the start method

```Apex
protected override Iterable<Object> start(ProcessContext ctx) {
    return (Iterable<Object>) new AccountsIterable();
}
```

## The demo code

[AccountsIterable](../src/force-app/main/default/classes/iterators/AccountsIterable.cls) is a class that will return an iterator  
[AccountTechnologyIterator](../src/force-app/main/default/classes/iterators/AccountTechnologyIterator.cls) is the iterator, which contains the filter  
[AccountTechnologyIteratorTest](../src/force-app/main/default/classes/iterators/AccountTechnologyIteratorTest.cls) unit tests to demonstrate the filtering  

Outside of unit tests you can use the iterator directly (in code or an anonymous Apex window)
```Apex
Iterable<Object> accountIterable = (Iterable<Object>) new AccountsIterable();
Iterator<Object> accountIterator = accountIterable.iterator();
while (accountIterator.hasNext()) {
    System.Debug(accountIterator.next());
}
```

Note: [Iterators](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_classes_iterable.htm
) aren’t currently supported in for loops.
