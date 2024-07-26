# My Solution

```ruby
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# way 1
!!ages["Spot"]

# way 2
ages.any? { |key, val| key == "Spot" }

# way 3
ages.include?("Spot")
```
