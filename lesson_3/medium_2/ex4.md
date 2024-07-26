# My Solution

It prints:

```
My string looks like this now: pumpkinsrutabaga
My array looks like this now: ["pumpkins"]
```

`my_string` is altered because `tricky_method_two` uses the `<<` method on `my_string`'s associated parameter. The `<<` method mutates its caller (i.e. `a_string_param`) and thus changes the string object it is called on.

`my_array` is not affected because `tricky_method_two` simply re-assigns `my_string`'s associated parameter. Re-assignment does not mutate the original array that `an_array_param` pointed to and thus `my_array` stays the same.
