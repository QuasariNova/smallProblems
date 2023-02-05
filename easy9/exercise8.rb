# Write a method which takes a grocery list (array) of fruits with quantities
# and converts it into an array of the correct number of each fruit.

# p
# Given a nested array of items and how many, create a single dimensional array
# with that many of each item

# Rules
# Input: Nested Array
# Output: Array
# - Input will be an array of 2 element arrays
# - The first element int he nested array is the item you want to buy
# - The second element in the nested array is how many you want to buy
# - Output array should be in order the nested arrays are in

# e
# buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
#   ["apples", "apples", "apples", "orange", "bananas","bananas"]

# d
# Array

# a
# - Given a nested array named list
# - Create an empty array
# - Iterate over the array
#   - For each sub-array, use the last element to loop that many times
#   - For each loop, add the first element from the subarray to the empty array
# - Return the previously empty array


def buy_fruit(list)
  list.each_with_object([]) do |sub_arr, bought|
    sub_arr.last.times { bought << sub_arr.first }
  end
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
