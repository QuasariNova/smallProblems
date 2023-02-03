# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...)
# such that the first 2 numbers are 1 by definition, and each subsequent number
# is the sum of the two previous numbers. This series appears throughout the
# natural world.

# Computationally, the Fibonacci series is a very simple series, but the
# results grow at an incredibly rapid rate. For example, the 100th Fibonacci
# number is 354,224,848,179,261,915,075 -- that's enormous, especially
# considering that it takes 6 iterations before it generates the first 2 digit
# number.

# Write a method that calculates and returns the index of the first Fibonacci
# number that has the number of digits specified as an argument. (The first
# Fibonacci number has index 1.)

# p
# Given a integer that represents how many digits you are looking for find the
# index of the first number in the Fibonacci series that has that many digits.
#
# Rules:
# Input: Integer number of digits
# Output: Integer index where the 1st number in the sequence has input digits
# - index starts at 1
# - 2 is the minimum number of digits we need to find
# - Fibonacci sequence, each number is the sum of the previous two
# - First two numbers in sequence are 1,1
#
# e
#
# find_fibonacci_index_by_length(2) == 7
# find_fibonacci_index_by_length(3) == 12
# find_fibonacci_index_by_length(10) == 45
# find_fibonacci_index_by_length(100) == 476
# find_fibonacci_index_by_length(1000) == 4782
# find_fibonacci_index_by_length(10000) == 47847
#
# d
# integers
#
# a
# - Set an array of two values, both 1
# - Set index to 2
# - calculate next number in sequence, storing current in previous, and next in
#     current
# - increase index by 1
# - loop until current_number has required digits
# - return index

def find_fibonacci_index_by_length(digits)
  last_two = [1, 1]
  index = 2

  until last_two[1].to_s.size >= digits
    last_two = [last_two[1], last_two[0] + last_two[1]]
    index += 1
  end

  index
end

p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(3) == 12
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
