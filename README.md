Apex Filtering SObjects
-------------------

This exercise was originally called LINQ like queries and is specifically for dealing with in memory sets/lists or maps rather than SOQL.

Those with a C# background have got used to the power and convenience of Language Integrated-Query (LINQ).

Language-Integrated Query (LINQ) is the name for a set of technologies based on the integration of query capabilities directly into the C# language. Traditionally, queries against data are expressed as simple strings without type checking at compile time or IntelliSense support. Furthermore, you have to learn a different query language for each type of data source: SQL databases, XML documents, various Web services, and so on. With LINQ, a query is a first-class language construct, just like classes, methods, events. You write queries against strongly typed collections of entities by using language keywords and familiar operators. The LINQ family of technologies provides a consistent query experience for objects (LINQ to Objects), relational databases (LINQ to SQL), and XML (LINQ to XML).

Java has no direct equivalent although for most Java streams represent an equivalent to LINQ, albeit in appearance only. Introduced in Java 8, the Stream API is used to process collections of objects. A stream is a sequence of objects that supports various methods which can be pipelined to produce the desired result.
The features of Java stream are –

- A stream is not a data structure instead it takes input from the Collections, Arrays or I/O channels.
- Streams don’t change the original data structure, they only provide the result as per the pipelined methods.
- Each intermediate operation is lazily executed and returns a stream as a result, hence various intermediate operations can be pipelined. Terminal operations mark the end of the stream and return the result.

Apex does not have any in built classes that can stream or map objects but it does come with a powerful object model and fantastic relational querying API in the form of Salesforce Object Querying Language (SOQL).

This exercise is all about taking the result of a SOQL query and then reducing or filtering the results, other elements or chaining of iterators can be built on top of the basic filtering functionality.

[Basic Filtering](docs/basic-filtering.md)

[Composite Filtering](docs/composite-filtering.md)

[Predicate Filtering](docs/basic-predicates.md)

[String Expression Filtering](docs/expression-filtering.md)

Since creating these classes other projects to perform client side filtering have become available including
- [Lazy Iterators](https://nebulaconsulting.co.uk/insights/using-lazy-evaluation-to-write-salesforce-apex-code-without-for-loops/) with [code](https://bitbucket.org/aidan_harding/lazy-iterator/src/master/) published on bitbucket. 
- Apex Lambda with [code](https://github.com/ipavlic/apex-lambda) published on Github.

Just be wary, given the Salesforce governors and limits you probably don't want to build a large framework or anything that will iterate over a collection too many times.