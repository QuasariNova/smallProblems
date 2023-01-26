# In the previous exercise, you developed a method that converts simple numeric
# strings to Integers. In this exercise, you're going to extend that method to
# work with signed numbers.
#
# Write a method that takes a String of digits, and returns the appropriate
# number as an integer. The String may have a leading + or - sign; if the first
# character is a +, your method should return a positive number; if it is a -,
# your method should return a negative number. If no sign is given, you should
# return a positive number.
#
# You may assume the string will always contain a valid number.
#
# You may not use any of the standard conversion methods available in Ruby,
# such as String#to_i, Integer(), etc. You may, however, use the
# string_to_integer method from the previous lesson.
#
# Examples
#
# string_to_signed_integer('4321') == 4321
# string_to_signed_integer('-570') == -570
# string_to_signed_integer('+100') == 100
#

ZERO_ASCII = 48

def string_to_integer(string)
  reversed_bytes = string.bytes.reverse
  number = 0

  reversed_bytes.each_with_index do |char, i|
    number += (char - ZERO_ASCII) * 10**i
  end

  number
end

def string_to_signed_integer(string)
  sign = string.chr == '-' ? -1 : 1
  string = string.delete('-+')
  string_to_integer(string) * sign
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
puts string_to_signed_integer('+')
