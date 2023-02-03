# Write a method that takes a String as an argument, and returns a new String
# that contains the original value using a staggered capitalization scheme in
# which every other character is capitalized, and the remaining characters are
# lowercase. Characters that are not letters should not be changed, but count
# as characters when switching between upper and lowercase.

# p
# Given a string, return a new string that has alternating case of
# uppercase->lowercase->uppercase->lowercase->...

# Rules
# Input: string
# Output: new string
# - Even index is uppercase
# - Odd index is lowercase
# - non alpha chars are left alone

# e
# staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# staggered_case('ALL_CAPS') == 'AlL_CaPs'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# d
# strings

# a
# - Given string str
# - Create new string staggered
# - Iterate over str, adding each character staggered while modifying them
#   based on index
#    - odd is lowercase
#    - even is uppercase
#    - non alpha chars are unchanged

def staggered_case(str)
  str.each_char.with_index.with_object("") do |(char, index), staggered|
    staggered << (index.even? ? char.upcase : char.downcase)
  end
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
