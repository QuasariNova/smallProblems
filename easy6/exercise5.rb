# Write a method that takes an Array, and returns a new Array with the elements
# of the original list in reverse order. Do not modify the original list.

# You may not use Array#reverse or Array#reverse!, nor may you use the method
# you wrote in the previous exercise.

# p
# Given an array, create a new array that is a reversed copy of it.

# Rules:
# Input: array
# Output: new array that is a reversed copy of array
# - can't use #reverse or #reverse!, also can't use last solution
# - must return a new array

# e
# reverse([1,2,3,4]) == [4,3,2,1]          # => true
# reverse(%w(a b e d c)) == %w(c d e b a)  # => true
# reverse(['abc']) == ['abc']              # => true
# reverse([]) == []                        # => true

# list = [1, 3, 2]                      # => [1, 3, 2]
# new_list = reverse(list)              # => [2, 3, 1]
# list.object_id != new_list.object_id  # => true
# list == [1, 3, 2]                     # => true
# new_list == [2, 3, 1]                 # => true

# d
# Arrays

# a
# - loop over array from last element, pushing value to new array

# def reverse(arr)
#   index = arr.size - 1
#   rev_arr = []

#   until index < 0
#     rev_arr << arr[index]
#     index -= 1
#   end

#   rev_arr
# end

# further exploration alogrithm
# - iterate over array putting element as first element

def reverse(arr)
  arr.each_with_object([]) { |value, rev| rev.unshift value }
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true
