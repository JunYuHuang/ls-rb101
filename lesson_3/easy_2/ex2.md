# My Solution

```ruby
munsters_description = "The Munsters are creepy in a good way."

# Get "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
munsters_description.swapcase!

# Get "The munsters are creepy in a good way."
munsters_description.gsub!('M', 'm')

# Get "the munsters are creepy in a good way."
munsters_description.downcase!()

# Get "THE MUNSTERS ARE CREEPY IN A GOOD WAY."
munsters_description.upcase!()
```
