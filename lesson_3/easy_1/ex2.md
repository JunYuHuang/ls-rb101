# My Solution

> Describe the difference between `!` and `?` in Ruby.

- `!`:
  - common as a suffix for methods mutate their caller and/or arguments
  - use to negate an expression
- `?`:
  - can use as part of a ternary expression
  - common as a suffix for methods that return a boolean value

> 1. what is `!=` and where should you use it?

`!=` is the inequality operator that compares its two operands. If its two operands are not equal, it makes the expression returns true, otherwise it returns false.

Use it to check if two objects are equal or not in a conditional.

> 2. put `!` before something, like `!user_name`

This negates the value of `!user_name`. If `user_name` is truthy, then `!` makes it falsy.

> 3. put `!` after something, like `words.uniq!`

The `!` is part of the method name and usually indicates that the method has some side effect i.e. mutating its caller and/or its arguments.

> 4. put `?` before something

Used as part of a ternary expression i.e. `? :`.

> 5. put `?` after something

The `?` is part of the method name being called. Such methods usually indicate that they return a boolean value.

> 6. put `!!` before something, like `!!user_name`

The `!!` gets a forced boolean object / value from the variable `user_name`. If `user_name` is truthy, then `!!` makes it return `true`. If `user_name` is falsy, then `!!` makes it return `false`.
