# Write a method that takes a string, and returns a new string in which every
# character is doubled.

# p
# Given a string, create a new string in which every character is doubled in
# place.

# Rules
# Input: String
# Output: String
# - Every character needs to be doubled in place
# - Return new string, don't mutate argument

# e
# repeater('Hello') == "HHeelllloo"
# repeater("Good job!") == "GGoooodd  jjoobb!!"
# repeater('') == ''

# d
# string

# a
# - Given string str
# - Create an empty str doubled
# - Iterate over every character in str, concatenating each character twice
#   into doubled
# - return doubled

def repeater(str)
  str.each_char.with_object("") { |char, doubled| doubled << (char * 2) }
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
