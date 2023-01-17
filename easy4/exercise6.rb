# Write a method that takes an Array of numbers, and returns an Array with the
# same number of elements, and each element has the running total from the
# original Array.
#
# Examples:
#
# running_total([2, 5, 13]) == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []
#
# A running total is the sum of all values in a list up to an including the
# current element. Thus, the running total when looking at index 2 of the array
# [14, 11, 7, 15, 20] is 32 (14 + 11 + 7), while the running total at index 3
# is 47 (14 + 11 + 7 + 15).
#
# Original Answer
# def running_total(num_array)
#   total = 0
#   num_array.map { |number| total += number }
# end
#
# Further Exploration:
# Try solving this problem using Enumerable#each_with_object or
# Enumerable#inject (note that Enumerable methods can be applied to Arrays).

def running_total(num_array)
  num_array.inject([]) { |array, n| array << array.last.to_i + n }
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []
