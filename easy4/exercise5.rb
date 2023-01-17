# Write a method that searches for all multiples of 3 or 5 that lie between 1
# and some other number, and then computes the sum of those multiples. For
# instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 +
# 9 + 10 + 12 + 15 + 18 + 20).
#
# You may assume that the number passed in is an integer greater than 1.
#
# Examples
#
# multisum(3) == 3
# multisum(5) == 8
# multisum(10) == 33
# multisum(1000) == 234168
#
# original answer:
# def multisum(number)
#   threes_fives = []
#   1.upto(number) { |n| threes_fives << n if n % 3 == 0 || n % 5 == 0 }
#   threes_fives.sum
# end
#
# Further Exploration
#
# Investigate Enumerable.inject (also known as Enumerable.reduce), How might
# this method be useful in solving this problem? (Note that Enumerable methods
# are available when working with Arrays.) Try writing such a solution. Which
# is clearer? Which is more succinct?

def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(number)
  1.upto(number).inject(0) do |sum, n|
    multiple?(n, 3) || multiple?(n, 5) ? sum + n : sum
  end
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
