# Write a method that takes an integer argument, and returns an Array of all
# integers, in sequence, between 1 and the argument.

# You may assume that the argument will always be a valid integer that is
# greater than 0.

# p
# Given a positive integer, create an array of integers between 1 and the given
# integer, including that integer, in sequence.

# Rules
# Input: Integer
# Output: Array
# - Input will be positive
# - Output is an array of integer from 1 to input in sequence

# e
# sequence(5) == [1, 2, 3, 4, 5]
# sequence(3) == [1, 2, 3]
# sequence(1) == [1]

# d
# Array

# a
# - Given Positive Integer num
# - Create a range from 1 to num.
# - Create an empty array arr
# - Iterate over range adding each element to arr
# - Return arr

# def sequence(num)
#   # 1.upto(num).with_object([]) { |ele, arr| arr << ele }
#   Array(1..num) # (1..num).to_a also works
# end

# Further exploration
# Food for thought: what do you think sequence should return if the argument is
# not greater than 0. For instance, what should you do if the argument is -1?
# Can you alter your method to handle this case?

def sequence(num)
  return (1..num).to_a if num >= 1
  1.downto(num).with_object([]) { |ele, arr| arr << ele }
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(-5) == [1, 0, -1, -2, -3, -4, -5]
