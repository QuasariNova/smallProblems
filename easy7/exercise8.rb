# Write a method that takes two Array arguments in which each Array contains a
# list of numbers, and returns a new Array that contains the product of each
# pair of numbers from the arguments that have the same index. You may assume
# that the arguments contain the same number of elements.

# p
# Given two arrays that contain an equal number of integers, return a new array
# that contains the product of each pair of integers at the same index.

# Rules
# Input: Array, Array
# Output: Array
# - Both input arrays have same length
# - You multiply the same indexed element in each array together
# - Two empty arrays return one empty array

# e
# multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
# multiply_list([], []) == []

# d
# Arrays

# a
# - Given two arrays, nums1 and num2
# - Create new array
# - Iterate over both simultaneously, multiplying their elements together and
#   adding to new array
# - Return new array

def multiply_list(nums1, nums2)
  nums1.zip(nums2).map { |pair| pair.inject(&:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
p multiply_list([], []) == []
