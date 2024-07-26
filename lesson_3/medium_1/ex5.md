# My Solution

The problem with the code is that the `limit` local variable cannot be accessed inside the `fib` method due to self-contained method scoping rules in Ruby.

Fix this by adding `limit` as a parameter with a default value of `15` to the `fib` method:

```ruby
def fib(first_num, second_num, limit = 15)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"
```
