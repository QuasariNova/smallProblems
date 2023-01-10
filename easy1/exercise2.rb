# Write a method that takes one integer argument, which may be positive,
# negative, or zero. This method returns true if the number's absolute value is
# odd. You may assume that the argument is a valid integer value.
#
# Examples:
#
# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true

# Given an integer input named 'value
# Take the Modulus of 'value' and 2 and return true if not 0, false if so

def is_odd?(value)  # Rubocop wants me to name this odd?
  value % 2 != 0    # Rubocop wants me to replace with odd?
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
