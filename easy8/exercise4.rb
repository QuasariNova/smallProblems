# Write a method that returns a list of all substrings of a string that are
# palindromic. That is, each substring must consist of the same sequence of
# characters forwards as it does backwards. The return value should be arranged
# in the same sequence as the substrings appear in the string. Duplicate
# palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous
# exercise.

# For the purposes of this exercise, you should consider all characters and pay
# attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor
# "Abc-bA" are. In addition, assume that single characters are not palindromes.

# p
# Given a string, find all substrings that are palindromes

# Rules:
# Input: String
# Output: Array of Strings
# - A Palindrom is the same both forward and backwards
# - Consider all characters
# - case sensitive
# - a single character string is not a palindrome
# - Output should be organized in the same order the substrings appear in string

# e
# palindromes('abcd') == []
# palindromes('madam') == ['madam', 'ada']
# palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]

# d
# Array of Strings

# a
# - For string str
# - Find all substrings
# - Iterate and reject any substring that is not a palindrome
# - return filtered list of substrings

def leading_substrings(str)
  1.upto(str.size).with_object([]) { |i, arr| arr << str[0, i] }
end

def substrings(str)
  last = str.size - 1
  (0..last).map { |i| leading_substrings(str[i..last]) }.flatten
end

# def palindrome?(str)
#   return false if str.size < 2
#   str == str.reverse
# end

# Further Exploration
# Can you modify this method (and/or its predecessors) to ignore
# non-alphanumeric characters and case? Alphanumeric characters are alphabetic
# characters(upper and lowercase) and digits.

def palindrome?(str)
  str = str.downcase.delete('^a-z0-9')
  return false if str.size < 2
  str == str.reverse
end

def palindromes(str)
  substrings(str).reject { |substring| !palindrome?(substring) }
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') #== [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

p palindromes('Hi---9---i+=h')
