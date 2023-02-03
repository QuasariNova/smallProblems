# Write a method named include? that takes an Array and a search value as
# arguments. This method should return true if the search value is in the
# array, false if it is not. You may not use the Array#include? method in your
# solution.

# p
# Given an array and a value, check if the array contains said value.

# Rules
# Input: Array, Value
# Output: Boolean
# - array is first parameter, value is second
# - Can not use Array#include?
# - returns true if array includes value
# - returns false otherwise

# e
# include?([1,2,3,4,5], 3) == true
# include?([1,2,3,4,5], 6) == false
# include?([], 3) == false
# include?([nil], nil) == true
# include?([], nil) == false
# include?(['a', 2], 'a') == true

# d
# Array

# a
# - Given array called arr and value called search
# - Iterate over arr and check for search
# - if it finds search, return true
# - otherwise return false

def include?(arr, search)
  arr.each { |element| return true if element == search }
  false
end

p include?([1, 2, 3, 4, 5], 3) == true
p include?([1, 2, 3, 4, 5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
p include?(['a', 2], 'a') == true
