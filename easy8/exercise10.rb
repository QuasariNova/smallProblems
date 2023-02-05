# Write a method that takes one argument, an array containing integers, and
# returns the average of all numbers in the array. The array will never be
# empty and the numbers will always be positive integers. Your result should
# also be an integer.

# Don't use the Array#sum method for your solution - see if you can solve this
# problem using iteration more directly.

# p
# Given an array of integers, find the average of all values in the array.

# Rules
# Input: Array of integers
# Output: Integer
# - Can not use #sum
# - Result should always be an integer
# - Array will never be empty
# - Array will always contain positive integers

# e
# puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

# d
# Array

# a
# - Given array of integers nums
# - Initialize accumulator
# - Iterate over nums adding element to accumulator
# - divide accumulator by nums size
# - Return that value

def average(nums)
  nums.reduce(&:+) / nums.size
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
