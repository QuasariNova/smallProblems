# Write a method that takes a sentence string as input, and returns the same
# string with any sequence of the words 'zero', 'one', 'two', 'three', 'four',
# 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

# p
# Given a string, convert all lowercase sequences of number names from 0 to 9
# into their corresponding numeric notation and return the string witht he
# conversions

# Rules
# Input: String
# Output: String
# - numbers will be all lowercase
# - convert number name to number, so 'zero' becomes '0'
# - only 0-9 are used

# e
# word_to_digit(
#   'Please call me at five five five one two three four. Thanks.') ==
#   'Please call me at 5 5 5 1 2 3 4. Thanks.'

# d
# Hash { 'zero' => '0' ... 'nine' => 9 }
# Array of words
# String

# a
# - Given a string str
# - seprate str into words, words are separted by spaces
# - Iterate over words
#   - get substring of just alphabetical characters and compare to hash keys
#   - if key exists, replace substring with hashes value
# - join string back together and return

NAMES_TO_NUMBERS = {
  'zero' => '0',
  'one' => '1',
  'two' => '2',
  'three' => '3',
  'four' => '4',
  'five' => '5',
  'six' => '6',
  'seven' => '7',
  'eight' => '8',
  'nine' => '9'
}

def word_to_digit(str)
  words = str.split

  words.map do |word|
    key = word.gsub(/[^a-z]/, '')
    if NAMES_TO_NUMBERS.key? key
      word.sub(key, NAMES_TO_NUMBERS[key])
    else
      word
    end
  end.join(' ')
end

p word_to_digit(
  'Please call me at five five five one two three four. Thanks.'
) ==
  'Please call me at 5 5 5 1 2 3 4. Thanks.'
