# Write a method that returns a list of all substrings of a string. The
# returned list should be ordered by where in the string the substring begins.
# This means that all substrings that start at position 0 should come first,
# then all substrings that start at position 1, and so on. Since multiple \
# substrings will occur at each position, the substrings at a given position
# should be returned in order from shortest to longest.

# You may (and should) use the leading_substrings method you wrote in the
# previous exercise:

# p
# Given a string, find all possible substrings, sorting first by initial index
# then by length

# Rules
# Input: String
# Output: Array of Strings
# - Contains all possible substrings
# - Array sorted by initial index of substring then size of substring
# - can use previous method
# - Single dimensional array output

# e
# substrings('abcde') == [
#   'a', 'ab', 'abc', 'abcd', 'abcde',
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]

# d
# String, Array

# a
# - Given a string str
# - Iterate over each index and set as starting index
# - Find all sub arrays for each starting index
# - return results

def leading_substrings(str)
  1.upto(str.size).with_object([]) { |i, arr| arr << str[0, i] }
end

def substrings(str)
  last = str.size - 1
  (0..last).map { |i| leading_substrings(str[i..last]) }.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
