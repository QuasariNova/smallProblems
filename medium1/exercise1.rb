# Write a method that rotates an array by moving the first element to the end
# of the array. The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.

# p
# Given an array, create a new array that is the original array, but with the
# first element moved to the end of the array.

# Rules
# Input: Array
# Output: New Array
# - Do not mutate input
# - First element is moved to be the last element.
# - Can not use Array#rotate or Array#rotate!

# e
# rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# rotate_array(x) == [2, 3, 4, 1]   # => true
# x == [1, 2, 3, 4]                 # => true

# d
# Array

# a
# Given array arr
# Remove first element from arr as first
# Append first element to the rest of the arr
# Return value

def rotate_array(arr)
  arr[1..-1] + [arr.first]
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true
