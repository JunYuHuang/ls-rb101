# My Solution

```ruby
def factors(number)
  return [] if number < 1
  divisor = number
  factors = []
  while divisor != 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end
```

The `number % divisor == 0` checks if `number` is divisible by `divisor`. If `number` is not divisible by `divisor`, it will have a remainder that makes the expression falsy.

Line 8 returns the array of integer factors of `number` from the `factors` method.
