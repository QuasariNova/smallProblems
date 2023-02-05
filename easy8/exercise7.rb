# Write a method that takes a string, and returns a new string in which every
# consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and
# whitespace should not be doubled.

# p
# Given a string, create a new string in which you double only the consonants.

# Rules
# Input: String
# Output: String
# - Create new string
# - Copy each character to new string
# - Consonants are copied twice, everything else once

# e
# double_consonants('String') == "SSttrrinngg"
# double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# double_consonants("July 4th") == "JJullyy 4tthh"
# double_consonants('') == ""

# d
# String

# a
# - Given a string str
# - Create empty string doubled
# - Interate over every character in str
#   - If character is consant, copy twice to doubled
#   - Otherwise copy once ot doubled
# - return doubled

CONSONANTS = 'bcdfghjklmnpqrstvwxyz'

def double_consonants(str)
  str.each_char.with_object('') do |char, doubled|
    times = CONSONANTS.include?(char.downcase) ? 2 : 1
    doubled << (char * times)
  end
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
