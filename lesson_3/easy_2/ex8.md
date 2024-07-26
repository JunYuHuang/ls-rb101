# My Solution

```ruby
advice = "Few things in life are as important as house training your pet dinosaur."

advice.slice!(0..38)
```

Using `String#slice` instead of `String#slice!` does the same thing except for not mutating `advice`'s string object; `advice`'s value remains the same as its original value.
