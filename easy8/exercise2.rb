# Write a method that returns a list of all substrings of a string that start
# at the beginning of the original string. The return value should be arranged
# in order from shortest to longest substring.

# p
# Given a string, find all substrings that start with index 0 arranged from
# shortest to longest.

# Rules
# Input: string
# Output: array of strings
# - Outputs element size should be equal to string length

# e
# leading_substrings('abc') == ['a', 'ab', 'abc']
# leading_substrings('a') == ['a']
# leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# d
# string, array

# a
# - Given a string str
# - Iterate over every str index creating substrings for index 0 to current
#   index
# - return array of substrings

def leading_substrings(str)
  1.upto(str.size).with_object([]) { |i, arr| arr << str[0, i] }
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
