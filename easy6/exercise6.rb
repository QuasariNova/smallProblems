# Write a method that takes two Arrays as arguments, and returns an Array that
# contains all of the values from the argument Arrays. There should be no
# duplication of values in the returned Array, even if there are duplicates in
# the original Arrays.

# p
# Given two arrays, combine them into one removing duplicate values
#
# Rules:
# Input: two arrays
# Output: one array that is combined with duplicates removed
# - left array is added first, then right array

# e
# merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# d
# Arrays

# a
# Iterate over second array, adding each value to a copy of the first.
# Remove duplicates

def merge(left_arr, right_arr)
  out_arr = left_arr.dup

  right_arr.each { |ele| out_arr << ele }

  out_arr.uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
