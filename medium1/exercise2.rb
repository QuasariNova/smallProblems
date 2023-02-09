# Write a method that can rotate the last n digits of a number.
# Note that rotating just 1 digit results in the original number being returned.

# You may use the rotate_array method from the previous exercise if you want.
# (Recommended!)

# You may assume that n is always a positive integer.

# p
# Given an integer and a number of digits, rotate the number of rightmost
# digits left once.

# Rules:
# Input: Integer, Integer
# Output: Integer
# - Inputing 1 for number of digits will output the same number
# - Inputing a number greater than the number of digits in the integer, will
#   rotate the whole integer

# e
# rotate_rightmost_digits(735291, 1) == 735291
# rotate_rightmost_digits(735291, 2) == 735219
# rotate_rightmost_digits(735291, 3) == 735912
# rotate_rightmost_digits(735291, 4) == 732915
# rotate_rightmost_digits(735291, 5) == 752913
# rotate_rightmost_digits(735291, 6) == 352917

# d
# Array

# a
# Given an integer int and a number of digits digits
# Convert int into an array of digits
# rotate the rightmost digits digits
# convert array back into integer
# return integer

def rotate_array(arr)
  arr[1..-1] + [arr.first]
end

def rotate_rightmost_digits(int, digits)
  dig_arr = int.to_s.chars
  digits = dig_arr.size if digits > dig_arr.size

  (dig_arr[0..-(digits + 1)] + rotate_array(dig_arr[-digits..-1])).join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
