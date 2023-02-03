# Write a method that takes a single String argument and returns a new string
# that contains the original value of the argument with the first character of
# every word capitalized and all other letters lowercase.

# You may assume that words are any sequence of non-blank characters.

# p
# Given a string of words, capitalize the first character of each word and make
# the rest of the characters of each word lowercase

# Rules
# Input: string
# Output: new string
# - Words are a group of characters seperated by a space
# - If the first character is not alphabetical, do not capitalize any character

# e
# word_cap('four score and seven') == 'Four Score And Seven'
# word_cap('the javaScript language') == 'The Javascript Language'
# word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# d
# strings and arrays

# a
# - Given a string str
# - Seperate str into an array of words named words
# - Iterate over each word in words and capitalize the first character of every
#   word, making the rest lowercase
# - Join the words back into a string sentence
# - return string sentence

def word_cap(str)
  words = str.split
  words.map!(&:capitalize)
  words.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
