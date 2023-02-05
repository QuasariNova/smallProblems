# Write a method that takes one argument, a string, and returns a new string
# with the words in reverse order.

# p
# Given a string, return a new string that has the words in reverse order

# Rules
# Input: String
# Output: String
# - Words are defined as any group of nonspace characters separated by a space
# - Word order is changed, but words themselves are not changed
# - Empty strings return empty strings
# - White space is deleted other than for seperating words

# e
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'
# puts reverse_sentence('') == ''
# puts reverse_sentence('    ') == '' # Any number of spaces results in ''

# d
# String, Array

# a
# - Given string str
# - Split string into array of substrings
# - Reverse array
# - Rejoin substrings into new space separated string
# - Return new string

def reverse_sentence(str)
  str.split.reverse.join(' ')
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''
