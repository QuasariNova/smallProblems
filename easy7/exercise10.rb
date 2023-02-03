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

# Further exploration
# Our solution ignored a couple of edge cases because we explicitly stated that
# you didn't have to handle them: strings that contain just one word, and
# strings that contain no words.

# Suppose we need a method that retrieves the middle word of a phrase/sentence.
# What edge cases need to be considered? How would you handle those edge cases
# without ignoring them? Write a method that returns the middle word of a
# phrase or sentence. It should handle all of the edge cases you thought of.

# If you are looking for the middle word, we have a few edge cases:
# - Empty strings: there is no middle
# - Strings with less than 3 words: There can not be a middle if there is no
#   first/last
# - String that have an even number of words: In this case there will be two
#   middle words

# p
# Given a string of words, find the middle word

# Rules
# Input: string
# Output: Array of strings
# - Return an empty array if less than 3 words
# - If odd, return middle word
# - If even, return two middle words
# - Words are any sequence of non-blank characters seperated by spaces

# e
# middle_of_phrase('last word') == []
# middle_of_phrase('') == []
# middle_of_phrase('What is up?') == ['is']
# middle_of_phrase('Who is on first?') == ['is', 'on']

# d
# String, Array

# a
# Given a string str
# Split str into words
# If less than 3 words, return an empty array
# Calculate middle.
# Select words from array that are in middle.
# return array of selected words

def middle_of_phrase(str)
  words = str.split
  return [] if words.size < 3
  middle = words.size / 2
  words.select.with_index do |_, i|
    i == middle || i == middle - 1 && words.size.even?
  end
end

p middle_of_phrase('last word') == []
p middle_of_phrase('') == []
p middle_of_phrase('What is up?') == ['is']
p middle_of_phrase('Who is on first?') == ['is', 'on']
