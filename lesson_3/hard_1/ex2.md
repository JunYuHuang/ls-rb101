# My Solution

It prints:

```
hi there
```

`informal_greeting` is a variable that points to the original string pointed by `greetings[:a]`. Thus, when `informal_greeting` is mutated, its original pointed-to reference string object `greetings[:a]` is also mutated and altered.
