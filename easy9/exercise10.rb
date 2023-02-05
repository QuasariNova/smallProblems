# Write a method that takes one argument, a positive integer, and returns the
# sum of its digits.

# p
# Given a positive integer, find the sum of it's digits

# Rules
# Input: positive integer
# Output: integer
# - Input will be > 0

# e
# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

# d
# Array

# a
# - Given a number num
# - Split digits into an array
# - Sum array
# - Return value

def sum(num)
  num.digits.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
