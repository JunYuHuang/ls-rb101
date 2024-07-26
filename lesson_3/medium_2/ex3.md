# My Solution

It prints:

```
String_arg_one looks like this now: pumpkins
String_arg_two looks like this now: pumpkinsrutabaga
```

`string_arg_one` stays the same because `tricky_method` uses the `+=` operator on `string_arg_one`'s associated parameter. The `+=` operator re-assigns a variable and does not mutate its left operand.

`string_arg_two` is altered because `tricky_method` uses the `<<` method on `string_arg_two`'s associated parameter. The `<<` method mutates its caller (i.e. `string_param_two`) and thus changes the string object it is called on.
