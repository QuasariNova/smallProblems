# Write a method that returns true if the string passed as an argument is a
# palindrome, false otherwise. A palindrome reads the same forward and
# backward. For this exercise, case matters as does punctuation and spaces.
#
#   Examples:
#
#   palindrome?('madam') == true
#   palindrome?('Madam') == false          # (case matters)
#   palindrome?("madam i'm adam") == false # (all characters matter)
#   palindrome?('356653') == true
#
# Original Answer
# def palindrome?(string)
#   half = string.size / 2
#   half.times { |n| return false unless string[n] == string[-(n+1)] }
#   true
# end
#
# puts palindrome?('madam') == true
# puts palindrome?('Madam') == false          # (case matters)
# puts palindrome?("madam i'm adam") == false # (all characters matter)
# puts palindrome?('356653') == true
#
# Their solution:
# def palindrome?(string)
#   string == string.reverse
# end
#
# Wow, duh. It was easier to do that, but now I'm more prepared for:
# Further Exploration
#
# Write a method that determines whether an array is palindromic; that is, the
# element values appear in the same sequence both forwards and backwards in the
# array. Now write a method that determines whether an array or a string is
# palindromic; that is, write a method that can take either an array or a
# string argument, and determines whether that argument is a palindrome. You
# may not use an if, unless, or case statement or modifier.
#
# My original answer technically satisfies this all three, but it is asking me
# to not use any conditional, so let's try that

def palindrome?(array_or_string)
  half = array_or_string.size / 2
  is_palindrome = true
  half.times do |n|
    same = array_or_string[n] == array_or_string[-(n+1)]
    is_palindrome = is_palindrome && same
  end
  is_palindrome
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true
puts palindrome?([0, 1, 2, 3]) == false
puts palindrome?(['n', 'o', 3, 'o', 'n'])
puts palindrome?([1, 2, 3, 3, 2, 1])
