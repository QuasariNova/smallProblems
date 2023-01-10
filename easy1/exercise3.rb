# Write a method that takes one argument, a positive integer, and returns a
# string of alternating 1s and 0s, always starting with 1. The length of the
# string should match the given integer.
#
# Examples:
#
# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'
#
# The tests above should print true.

# Given a positive integer input, named "number"
# loop "number" times with an interator
#   Start by saving an empty string
#   Add the character '1' or '0' to the saved string based on if the iterator
#   is odd or even
# After iterating through the loops, return the saved string

# def stringy(number)
#   string = ''
#   Array(1..number).each do |n|
#     mod = n % 2
#     string << mod.to_s
#   end
#   string
# end

# further exploration:
# Modify stringy so it takes an additional optional argument that defaults to
# 1. If the method is called with this argument set to 0, the method should
# return a String of alternating 0s and 1s, but starting with 0 instead of 1.

def stringy(number, start=1)
  return nil if start != 0 && start != 1
  string = ''
  finish = number - (1 - start)

  Array(start..finish).each do |n|
    mod = n % 2
    string << mod.to_s
  end

  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts stringy(6, 0) == '010101'
