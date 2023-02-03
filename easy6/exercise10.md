What will the following code print, and why? Don't run the code until you have tried to answer.

```ruby
array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2
```

---

The code will output:
```
Moe
Larry
CURLY
SHEMP
Harpo
CHICO
Groucho
Zeppo
```

This is due to variables as pointers. On line 1, we initialize local variable `array1` and assign it to an array of strings. Note that arrays are just a collection of references, so it's not actually storing each string, just pointing to each one.

On line 2, we initialize local variable `array2` and assign it to an empty array. This is a different array from `array1`. On line 3 we then populate the array referenced by `array2` by iterating over the array referenced by `array1` using the method `each` and pushing each element reference from `array1` into `array2`.

At this point we have two different arrays pointing to the same string references. This is important, because on line 4 we mutate thses strings. We invoke the `each` method on `array1` and invoke the destructive method `upcase!` on the strings that start with either `'C'` or `'S'`. Since the elements referenced by `array1` are the same objects as the elements held by `array2`, the strings change in both arrays.
