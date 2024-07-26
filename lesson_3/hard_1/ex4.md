# My Solution

```ruby
def is_an_ip_number?(str)
  return false if str.to_i.to_s != str
  (0..255).cover?(str.to_i)
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false if dot_separated_words.size != 4

  dot_separated_words.each do |word|
    return false unless is_an_ip_number?(word)
  end

  true
end
```
