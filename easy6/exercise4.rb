# Write a method that takes an Array as an argument, and reverses its elements
# in place; that is, mutate the Array passed into this method. The return value
# should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

# p
# Given an array, reverse it's elements in place
#
# Rules:
# Input: an array
# Output: same array with elements reversed
# - Can not use #reverse or #reverse!
# - Must mutate the input

# e
# list = [1,2,3,4]
# result = reverse!(list)
# result == [4, 3, 2, 1] # true
# list == [4, 3, 2, 1] # true
# list.object_id == result.object_id # true
#
# list = %w(a b e d c)
# reverse!(list) == ["c", "d", "e", "b", "a"] # true
# list == ["c", "d", "e", "b", "a"] # true
#
# list = ['abc']
# reverse!(list) == ["abc"] # true
# list == ["abc"] # true
#
# list = []
# reverse!(list) == [] # true
# list == [] # true

# d
# An Array

# a
# - Take an array
# - Determine arrays length
# - Methodically swap the last and first element in the array, iterating up to
#   the half way point
# - return the array

def reverse!(arr)
  half_length = arr.size / 2
  index = 0

  until index == half_length
    arr[index], arr[-1 - index] = arr[-1 - index], arr[index]
    index += 1
  end

  arr
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id.equal? result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true
