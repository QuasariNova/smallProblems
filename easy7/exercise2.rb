# Write a method that takes a string, and then returns a hash that contains 3
# entries: one represents the number of characters in the string that are
# lowercase letters, one the number of characters that are uppercase letters,
# and one the number of characters that are neither.

# p
# Given a string, return a hash that contains entries for how many characters
# in the given string are lowercase, uppercase, and neither.

# Rules
# Input: string
# Output: hash
# - Output contains 3 keys, :lowercase, :uppercase, and :neither
# - non alphabetical characters count as :neither

# e
# letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# d
# string and hash

# a
# For a given string str
# Count lowercase characters in str
# Count uppercase characters in str
# calculate neither characters in string using size and the previous two values
# create hash with values to correct keys
# return hash

def letter_case_count(str)
  {
    lowercase: str.count('a-z'),
    uppercase: str.count('A-Z'),
    neither: str.count('^a-zA-Z')
  }
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
