# In the previous exercise, you developed a method that converts non-negative
# numbers to strings. In this exercise, you're going to extend that method by
# adding the ability to represent negative numbers as well.
#
# Write a method that takes an integer, and converts it to a string
# representation.
#
# You may not use any of the standard conversion methods available in Ruby,
# such as Integer#to_s, String(), Kernel#format, etc. You may, however, use
# integer_to_string from the previous exercise.
#
# Examples
#
# signed_integer_to_string(4321) == '+4321'
# signed_integer_to_string(-123) == '-123'
# signed_integer_to_string(0) == '0'

DIGITS = %w(0 1 2 3 4 5 6 7 8 9)

def integer_to_string(integer)
  return '0' if integer == 0
  string = ''

  until integer == 0
    integer, remainder = integer.divmod 10
    string.prepend DIGITS[remainder]
  end
  string
end

def signed_integer_to_string(integer)
  return '0' if integer == 0
  string = integer_to_string(integer.abs)

  return string.prepend '-' if integer < 0
  string.prepend '+'
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
