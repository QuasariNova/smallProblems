# Write a method that counts the number of occurrences of each element in a
# given array.

# The words in the array are case-sensitive: 'suv' != 'SUV'. Once counted,
# print each element alongside the number of occurrences.

# p
# Given an array, count the number of occurrences of each element and print the
# results

# Rules:
# Input: Array
# Output: Print the number of each occurance
# - words are case sensitive
# - Printing should be formated "Element => #OfTimes"

# e
# vehicles = [
#   'car', 'car', 'truck', 'car', 'SUV', 'truck',
#   'motorcycle', 'motorcycle', 'car', 'truck'
# ]

# count_occurrences(vehicles)

# Outputs:
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

# d
# Array, Hash

# a
# - Given an array arr
# - Create an empty hash with default value 0
# - iterate over arr and use each element as a key to the hash to add 1 to that
#   keys value
# - Iterate over hash printing key value pairs

def count_occurrences(arr)
  occurrences = Hash.new(0)
  arr.each { |element| occurrences[element] += 1 }
  occurrences.each { |k, v| puts "#{k} => #{v}" }
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)
