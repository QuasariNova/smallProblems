# Write a method that returns the next to last word in the String passed to it
# as an argument.

# Words are any sequence of non-blank characters.

# You may assume that the input String will always contain at least two words.

# p
# Given a string of words seperated by spaces, find the next to last word.

# Rules
# Input: String
# Output: String
# - Input will have at least two words
# - words are any sequence of non-blank characters seperated by spaces

# e
# penultimate('last word') == 'last'
# penultimate('Launch School is great!') == 'is'

# d
# String, Array

# a
# Given a string str
# Split str into word substrings
# Find next to last word and return

def penultimate(str)
  str.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
