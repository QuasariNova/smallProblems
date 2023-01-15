# Write a method that returns true if its integer argument is palindromic,
# false otherwise. A palindromic number reads the same forwards and backwards.
#
# Examples:
#
# palindromic_number?(34543) == true
# palindromic_number?(123210) == false
# palindromic_number?(22) == true
# palindromic_number?(5) == true

def palindrome?(string)
  string == string.reverse
end

def palindromic_number?(number)
  palindrome?(number.to_s)
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true

# Further Exploration
#
# Suppose your number begins with one or more 0s. Will your method still work?
# Why or why not? Is there any way to address this?

# Our method won't work if you consider precluding 0s to offset 0s at the end.
# Technically, all numbers have preceding 0s, so if you wanted to include this
# in the check if it's palindromic, you just have to skip all 0s at the end of
# the number and only check the preceding value. Overall, that's kind of dumb,
# because it's still not palindromic if you consider one side has infinite 0s
# and the other finite.
