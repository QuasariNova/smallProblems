# Write a method that returns an Array that contains every other element of an
# Array that is passed in as an argument. The values in the returned list
# should be those values that are in the 1st, 3rd, 5th, and so on elements of
# the argument Array.

# p
# Given an array, create a new array that is every other element starting with
# the first

# Rules
# Input: Array
# Output: Array
# - Output should be every other element starting with the first
# - If input is empty, output is empty

# e
# oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# oddities(['abc', 'def']) == ['abc']
# oddities([123]) == [123]
# oddities([]) == []
# oddities([1, 2, 3, 4, 1]) == [1, 3, 1]

# d
# Arrays

# a
# - Given an array arr
# - Iterate over arr filtering out indexes that are not even
# - Return new filtered array

def oddities(arr)
  arr.select.with_index { |_, i| i.even? }
end

# p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# p oddities(['abc', 'def']) == ['abc']
# p oddities([123]) == [123]
# p oddities([]) == []
# p oddities([1, 2, 3, 4, 1]) == [1, 3, 1]

# Further Exploration
# Write a companion method that returns the 2nd, 4th, 6th, and so on elements
# of an array.

# Try to solve this exercise in at least 2 additional ways.

def interleave(arr, evens:false)
  arr.select.with_index { |_, i| evens ? i.odd? : i.even? }
end

def interleave2(arr, evens:false)
  arr.each_with_index.with_object([]) do |(ele, i), out|
    out << ele if evens && i.odd? || !evens && i.even?
  end
end

def interleave3(arr, evens:false)
  arr.dup.delete_if.with_index { |_, i| evens ? i.even? : i.odd? }
end

p interleave([2, 3, 4, 5, 6]) == [2, 4, 6]
p interleave([1, 2, 3, 4, 5, 6], evens: true) == [2, 4, 6]
p interleave2([2, 3, 4, 5, 6]) == [2, 4, 6]
p interleave2([1, 2, 3, 4, 5, 6], evens: true) == [2, 4, 6]
p interleave3([2, 3, 4, 5, 6]) == [2, 4, 6]
p interleave3([1, 2, 3, 4, 5, 6], evens: true) == [2, 4, 6]
