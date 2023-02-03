# Write a method that takes an Array as an argument, and returns two Arrays (as
# a pair of nested Arrays) that contain the first half and second half of the
# original Array, respectively. If the original array contains an odd number of
# elements, the middle element should be placed in the first half Array.

# p
# Given an array, split it into a pair of arrays that each contain half of the
# original arrays elements. Nest the two arrays.

# Rules
# Input: array
# Output: Nested array
# - Left nested array gets odd number of elements if original had odd size
# - Left is the first half of the array, right is the second half
# - Output must be nested array containing the two halfs as inner arrays
# - If we input an empty array, the two halves should be empty

# e
# halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# halvsies([5]) == [[5], []]
# halvsies([]) == [[], []]

# d
# arrays

# a
# Given an array named arr
# Find the midpoint of arr rounded up
# Split array based on this mid point
# return two arrays nested together

def halvsies(arr)
  halfway = (arr.size / 2.0).ceil
  arr.partition.with_index { |_, i| i < halfway }
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
