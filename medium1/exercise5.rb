# Write a method that displays a 4-pointed diamond in an n x n grid, where n is
# an odd integer that is supplied as an argument to the method. You may assume
# that the argument will always be an odd integer.

# p
# Given an odd positive integer, display a 4-pointed diamond in a grid of that
# size.

# Rules
# Input: Odd Integer
# Output: 4 pointed diamond on InputxInput Grid
# - Input will always be odd and positive
# - Diamond is made up of '*' character

# e
# diamond(1)

# *

# diamond(3)

#  *
# ***
#  *

# diamond(9)

#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *

# d
# Array of Strings

# a
# - Given an odd integer n
# - Create a string of n '*' called middle
# - Create an empty list called arr
# - Iterate over the odd numbers from 1 to n
#   - Add a string of the iteration's value '*'s to the list, centered to n
#     characters
# - Concatenate the arr with middle and a reversed version of arr
# - Output arr

# def diamond(n)
#   middle = '*' * n
#   arr = []

#   i = 1
#   while i < n
#     arr << ('*' * i).center(n)
#     i += 2
#   end

#   puts(arr + [middle] + arr.reverse)
# end

# Further Exploration
# Try modifying your solution or our solution so it prints only the outline of
# the diamond:

def get_hollow_row(width)
  return '*' if width == 1
  spaces = width - 2
  "*#{' ' * spaces}*"
end

def diamond(n)
  middle = get_hollow_row(n)
  arr = []

  i = 1
  while i < n
    arr << get_hollow_row(i).center(n)
    i += 2
  end

  puts(arr + [middle] + arr.reverse)
end

diamond 1
puts nil
diamond 5
puts nil
diamond 9
