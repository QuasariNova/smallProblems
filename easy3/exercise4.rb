# Create a method that takes two arguments, multiplies them together, and
# returns the result.
#
# Example:
#
# multiply(5, 3) == 15

def multiply(left_num, right_num)
  left_num * right_num
end

puts multiply(5, 3) == 15

# Further Exploration
# For fun: what happens if the first argument is an Array? What do you think is
# happening here?
puts multiply([1, 2, 3], 4).inspect

# Just like a string, which copies it's elements(characters) the amount of
# times that it's multiplied by, an array copies it's elements the same.
