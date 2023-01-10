# Write a method that takes two arguments, a string and a positive integer, and
# prints the string as many times as the integer indicates.
#
# Example:
#
# repeat('Hello', 3)
#
# Output:
#
# Hello
# Hello
# Hello

# PEDAC:
# Understand the problem
# Input: string, integer > 0
# Output: prints the string as many times as the integer indicates
#
# Implicit Requrements:
# Each printing of the string must be on it's own line.
#
# What do we do if the integer is < 1?
# Assumption: Nothing
#
# Examples:
# input:
#   repeat('Hello', 3)
# output:
#   Hello
#   Hello
#   Hello
#
# input:
#   repeat('My name', 0)
# output:
#
#
# Data Structure:
# Input string and an int. I don't need any other data
#
# Alogorithm:
# 1. For integer times:
#    1. Print string with newline

def repeat(string, integer)
  integer.times { puts string }
end

puts "repeat('Hello',3):"
repeat('Hello', 3)

puts "repeat('My name',0):"
repeat('My name', 0)

# repeat('Hello',3):
# Hello
# Hello
# Hello
# repeat('My name',0):
