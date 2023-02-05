# Write a method that takes two arguments: the first is the starting number,
# and the second is the ending number. Print out all numbers from the starting
# number to the ending number, except if a number is divisible by 3, print
# "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number
# is divisible by 3 and 5, print "FizzBuzz".

# p
# Given a starting number and ending number, print out each number, except
# replace any number divisible by 3 by "Fizz" and any number divisible by 5 by
# "Buzz". If the number is divisible by both 3 and 5, print "FizzBuzz" instead.

# Rules
# Input: Integer, Integer
# Output: Print numbers and Fizzbuzzs
# - First input is starting number
# - Second number is ending number
# - Print numbers except those divisible by 3 or 5
# - Print FizzBuzz if divisible by 3 and 5(multiples of 15)
# - Print Fizz if divisible by 3
# - Print Buzz if divisible by 5
# - Output should be comma seperated

# e
# fizzbuzz(1, 15)
# -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

# d
# Range

# Algorithm
# - For integer start and integer last
# - Iterate over all numbers in range
#   - Figure out if we should print the number, Fizz, Buzz, or Fizz Buzz
#   - print it

def get_fizzbuzz_str(num)
  return "FizzBuzz" if num % 15 == 0
  return "Fizz" if num % 3 == 0
  return "Buzz" if num % 5 == 0
  num.to_s
end

def fizzbuzz(start,last)
  arr = []

  start.upto(last) { |num| arr << get_fizzbuzz_str(num) }

  puts arr.join(', ')
end

fizzbuzz(1, 15)
