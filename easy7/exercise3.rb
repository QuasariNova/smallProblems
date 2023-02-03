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

# Further Exploration:
# Ruby conveniently provides the String#capitalize method to capitalize
# strings. Without that method, how would you solve this problem? Try to come
# up with at least two solutions.
def capitalize1(string)
  string[0].upcase + string[1..-1].downcase
end

LOWERCASE_RNG = 97..122
UPPERCASE_RNG = 65..90
CASE_DIF = 32

def upcase(string)
  output = string.chars.map do |character|
    if LOWERCASE_RNG.cover? character.ord
      (character.ord - CASE_DIF).chr
    else
      character
    end
  end

  output.join
end

def downcase(string)
  output = string.chars.map do |character|
    if UPPERCASE_RNG.cover? character.ord
      (character.ord + CASE_DIF).chr
    else
      character
    end
  end

  output.join
end

def capitalize2(string)
  upcase(string[0]) + downcase(string[1..-1])
end

def word_cap(str)
  words = str.split
  words.map! { |word| capitalize2(word) }
  words.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
