# My Solution

```ruby
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

barney = flintstones.select { |key, val| key == 'Barney' }.to_a[0]
```
