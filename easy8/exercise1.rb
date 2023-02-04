# Write a method that takes an Array of numbers and then returns the sum of the
# sums of each leading subsequence for that Array. You may assume that the
# Array always contains at least one number.

# p
# Given an array of numbers, calculate the sum of each subarray that starts at
# index 0 and add them together.

# Rules
# Input: Array
# Output: Number
# = sum all possible subarrays that start with index 0
# - sum up all sums

# e
# sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# sum_of_sums([1, 5, 7, 3]) == 36
# sum_of_sums([4]) == 4
# sum_of_sums([1, 2, 3, 4, 5]) == 35

# d
# Array

# a
# - Given an array of numbers, nums
# - For each index, find the sum of array elements from index 0 to that index
# - Sum up all sums found and return that value

def sum_of_sums(nums)
  nums.map.with_index { |_, i| nums[0..i].sum }.sum
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == 36
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
