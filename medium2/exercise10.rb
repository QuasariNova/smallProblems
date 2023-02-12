# Write a method that computes the difference between the square of the sum of
# the first n positive integers and the sum of the squares of the first n
# positive integers.

# p
# Given an integer number, find the difference between the square of the sum of
# the first number of integer and the sum of the squares of the first number of
# integers

# Rules
# Input: Integer
# Output: Integer
# - square of sums
# - sum of squares

# e
# sum_square_difference(3) == 22
#    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
# sum_square_difference(10) == 2640
# sum_square_difference(1) == 0
# sum_square_difference(100) == 25164150

# d
# Integers

# a
# - Given integer n
# - Find the sum of all integers 1..n and square it
#   - Iterate from 1 to n, adding each value together
#   - sum it up
# - Find the square of all integers 1..n and sum it
#   - Iterate from 1 to n, squaring the value and adding it to the accumulator
# - subtract and return value

def sum_square_difference(n)
  (1..n).reduce(&:+)**2 - (1..n).reduce { |acc, num| acc + num**2 }
end
p sum_square_difference(3) == 22 # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
