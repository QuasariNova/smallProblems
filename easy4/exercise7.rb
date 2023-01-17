# The String#to_i method converts a string of numeric characters (including an
# optional plus or minus sign) to an Integer. String#to_i and the Integer
# constructor (Integer()) behave similarly. In this exercise, you will create a
# method that does the same thing.
#
# Write a method that takes a String of digits, and returns the appropriate
# number as an integer. You may not use any of the methods mentioned above.
#
# For now, do not worry about leading + or - signs, nor should you worry about
# invalid characters; assume all characters will be numeric.
#
# You may not use any of the standard conversion methods available in Ruby to
# convert a string to a number, such as String#to_i, Integer(), etc. Your
# method should do this the old-fashioned way and calculate the result by
# analyzing the characters in the string.
#
# Examples
#
# string_to_integer('4321') == 4321
# string_to_integer('570') == 570
#
# Original Answer
ZERO_ASCII = 48

def string_to_integer(string)
  reversed_bytes = string.bytes.reverse
  number = 0

  reversed_bytes.each_with_index do |char, i|
    number += (char - ZERO_ASCII) * 10**i
  end

  number
end
#
# Further Exploration:
# Write a hexadecimal_to_integer method that converts a string representing a
# hexadecimal number to its integer value.

A_ASCII = 97

def hexadecimal_to_integer(hex_string)
  reversed_string = hex_string.downcase.bytes.reverse
  number = 0

  reversed_string.each_with_index do |char, i|
    char_value = char >= A_ASCII ? 10 + char - A_ASCII : char - ZERO_ASCII
    number += char_value * 16**i
  end

  number
end

puts hexadecimal_to_integer('4D9f') == 19871
