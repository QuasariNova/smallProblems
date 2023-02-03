# Write a method that takes a string as an argument and returns a new string in
# which every uppercase letter is replaced by its lowercase version, and every
# lowercase letter by its uppercase version. All other characters should be
# unchanged.

# You may not use String#swapcase; write your own version of this method.

# p
# Given a string, return a new string with capitalized letters in lower case
# and lowercase letters capitalized.

# Rules
# Input: String
# Output: String
# - Can not use #swapcase
# - Non-alpha characters are left alone
# - upper becomes lower
# - lower becomes upper

# e
# swapcase('CamelCase') == 'cAMELcASE'
# swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# d
# strings

# a
# Given string str
# Create new string swapped
# Iterate over str, adding acharacters to swapped with case swapped
# return swapped

def swapcase(str)
  str.each_char.with_object("") do |char, swapped|
    swapped << if /[a-z]/ =~ char
                 char.upcase
               else
                 char.downcase
               end
  end
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
