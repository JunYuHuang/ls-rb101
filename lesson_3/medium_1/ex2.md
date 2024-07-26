# My Solution

The `TypeError` error is raised because string concatenation with numbers only works with strings. Since `(40 + 2)` results in an integer, which cannot be used as part of the string concatenation.

2 ways to fix this:

```ruby
# fix 1 - string interpolation
puts "the value of 40 + 2 is #{(40 + 2)}"

# fix 2 - explicit conversion
puts "the value of 40 + 2 is " + (40 + 2).to_s
```
