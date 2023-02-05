# Create a method that takes two integers as arguments. The first argument is a
# count, and the second is the first number of a sequence that your method will
# create. The method should return an Array that contains the same number of
# elements as the count argument, while the values of each element will be
# multiples of the starting number.

# You may assume that the count argument will always have a value of 0 or
# greater, while the starting number can be any integer value. If the count is
# 0, an empty list should be returned.

# p
# Given two numbers, one for the count of elements, and one for the starting
# element, create an array that has count elements of starting value * element
# index.

# Rules
# Input: Integer >= 0, Integer
# Output: Array
# - Count should be >= 0
# - Start can be any Integer
# - Sequence is multiples of start
# - If 0 count is given, return an empty array

# e
# sequence(5, 1) == [1, 2, 3, 4, 5]
# sequence(4, -7) == [-7, -14, -21, -28]
# sequence(3, 0) == [0, 0, 0]
# sequence(0, 1000000) == []

# d
# Array

# a
# Given Integers count and start
# Create an array of count elements
# Iterate over array, transforming each element to start * elements index,
# where index starts at 1
# return array

def sequence(count, start)
  Array.new(count).map.with_index { |_, i| start * (i + 1) }
end

# probably better to use times or range with map as that would already pass
# supposed index value. This is what I first thought of.

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
