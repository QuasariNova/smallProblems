# In the easy exercises, we worked on a problem where we had to count the
# number of uppercase and lowercase characters, as well as characters that were
# neither of those two. Now we want to go one step further.

# Write a method that takes a string, and then returns a hash that contains 3
# entries: one represents the percentage of characters in the string that are
# lowercase letters, one the percentage of characters that are uppercase
# letters, and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.

# p
# Given a string, output a hash that contains the percentage of uppercase
# letters, lowercase letters, and nonalpha characters that appear in the string.

# Rules
# Input: String
# Output: Hash
# - lowercase is any chararacter a-z
# - uppercase is any character A-Z
# - neither is when neither is true
# - assume at least 1 character in string
# - percentages in terms of 100

# e
# letter_percentages('abCdef 123') ==
#   { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
# letter_percentages('AbCd +Ef') ==
#   { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
# letter_percentages('123') ==
#   { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

# d
# Hash

# a
# - Given string str
# - Count the Uppercase, store to upper
# - Count the Lowercase, store to lower
# - Figure out the size str and subtract both upper and lower from it, store to
#   none
# - Figure out percentages and create hash, returning hash

def letter_percentages(str)
  upper = str.count('[A-Z]').to_f
  lower = str.count('[a-z]').to_f
  none = str.size - upper - lower
  { lowercase: lower * 100 / str.size, uppercase: upper * 100 / str.size,
    neither: none * 100 / str.size }
end

p letter_percentages('abCdef 123') ==
  { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') ==
  { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') ==
  { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
