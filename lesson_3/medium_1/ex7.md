# My Solution

The family's data was ransacked.

In the `mess_with_demographics` method, `demo_hash.values` returns an array of all the values of the key-value pairs in the `demo_hash` hash. Ruby uses pass-by-reference when objects like hashes are passed to a method. The `demo_hash` parameter in the method refers to the original `munsters` hash. Thus, all changes that affect the `demo_hash` parameter also affect the `munsters` hash when the method is called with the `munsters` hash.
