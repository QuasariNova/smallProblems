# If you take a number like 735291, and rotate it to the left, you get 352917.
# If you now keep the first digit fixed in place, and rotate the remaining
# digits, you get 329175. Keep the first 2 digits fixed in place and rotate
# again to 321759. Keep the first 3 digits fixed in place and rotate again to
# get 321597. Finally, keep the first 4 digits fixed in place and rotate the
# final 2 digits to get 321579. The resulting number is called the maximum
# rotation of the original number.

# Write a method that takes an integer as argument, and returns the maximum
# rotation of that argument. You can (and probably should) use the
# rotate_rightmost_digits method from the previous exercise.

# Note that you do not have to handle multiple 0s.

# p
# Given an integer, rotate each subsection of digits, from largest to smallest,
# once to the left in sequence.

# Rules
# Input: Integer
# Output: Integer
# - Don't have to deal with multiple 0s
# - The whole number gets rotated, then the last n digits, then the last n-1,
#   etc

# e
# max_rotation(735291) == 321579
# max_rotation(3) == 3
# max_rotation(35) == 53
# max_rotation(105) == 15 # the leading zero gets dropped
# max_rotation(8_703_529_146) == 7_321_609_845

# d
# Array

# a
# Given an integer int
# Convert int to an array of digits digits
# Set n to digits size
# Rotate n rightmost digits
# subtract 1 from n and loop back to rotation until n is 0
# convert digits back into integer
# return integer

def rotate_array(arr)
  arr[1..-1] + [arr.first]
end

def max_array_rotation(arr)
  return arr if arr.size <= 1
  arr = rotate_array(arr)

  [arr[0]] + max_array_rotation(arr[1..-1])
end

def max_rotation(integer)
  max_array_rotation(integer.to_s.chars).join.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
