# Write a method that takes one argument, a string containing one or more
# words, and returns the given string with words that contain five or more
# characters reversed. Each string will consist of only letters and spaces.
# Spaces should be included only when more than one word is present.

# p
# Given a string of at least one word, create a new string that is a copy of the string with words with 5 or more characters reversed.

# Rules
# Input: String
# Output: New String
# - Words are a collection of non-space characters delineated by spaces
# - If a word is 5 or more characters, reverse it's characters
# - Output should be space delineated

# e
# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

# d
# String, Array

# a
# - Given string str
# - Separate str into array words
# - Iterate over words, reversing strings that have 5 or more characters
# - Join words back into a space delineated string
# - return new string

def reverse_words(str)
  str.split.map { |word| word.size >= 5 ? word.reverse : word }.join(' ')
end

puts reverse_words('Professional') == 'lanoisseforP'
puts reverse_words('Walk around the block') == 'Walk dnuora the kcolb'
puts reverse_words('Launch School') == 'hcnuaL loohcS'
