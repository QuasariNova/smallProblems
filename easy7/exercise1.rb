# Write a method that combines two Arrays passed in as arguments, and returns a
# new Array that contains all elements from both Array arguments, with the
# elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the
# same number of elements.

# p
# Given two arrays, combine them into a new array with each arrays elements
# alternating in the new array.

# Rules
# Input: 2 different arrays
# Output: 1 array with alternating elements from input
# - Input arrays are the same size and not empty
# - Left array input is first in alternating pattern
# - Output must be a new array

# e
# interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
# interleave(['a', nil], [nil, 'b']) == ['a', nil, nil, 'b']

# d
# Arrays

# a
# Given two arrays, arr1, and arr2.
# Create a new array, combined
# Iterate over both arrays alternatively adding elements to the new array
# Return the new array's reference

def interleave(arr1, arr2)
  arr1.each_with_index.with_object([]) do |(e, i), combine|
    combine << e << arr2[i]
  end
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
p interleave(['a', nil], [nil, 'b']) == ['a', nil, nil, 'b']
