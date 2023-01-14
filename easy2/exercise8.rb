# Write a program that asks the user to enter an integer greater than 0, then
# asks if the user wants to determine the sum or product of all numbers between
# 1 and the entered integer.
# 
# Examples:
# 
# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.
# 
# 
# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.
#
# Original Answer
# def prompt(string)
#   puts ">> #{string}"
# end
#
# number = loop do
#            prompt "Please enter an integer greater than 0:"
#            n = gets.to_i
#            break n if n > 0
#            prompt "Thats not an integer greater than 0!"
#          end
#
# operation = loop do
#               prompt "Enter 's' to compute the sum, 'p' to compute the" + \ 
#                 "product."
#               o = gets.chomp
#               break o if o == 's' || o == 'p'
#               prompt "That's not 'p' or 's'!"
#             end
#
# if operation == 's'   # if I knew procs, I'd probably pass a proc to the each
#   sum = 0
#   (1..number).each { |n| sum += n }
#   prompt "The sum of the integers between 1 and #{number} is #{sum}."
# else
#   product = 1
#   (1..number).each { |n| product *= n }
#   prompt "The product of the integers between 1 and #{number} is #{product}."
# end
#
# Further Exploration
# The compute_sum and compute_product methods are simple and should be
# familiar. A more rubyish way of computing sums and products is with the
# Enumerable#inject method. #inject is a very useful method, but if you've
# never used it before, it can be difficult to understand.
#
# Take some time to read the documentation for #inject. (Note that all
# Enumerable methods can be used on Array.) Try to explain how it works to
# yourself.
#
# Try to use #inject in your solution to this problem.
#
# Inject takes an enumerable at applies a operator across it, keeping a running 
# tally that it applies each index to, returning that tally at the end. Seems
# useful and complicated.

def prompt(string)
  puts ">> #{string}"
end

def get_number
  loop do
    prompt "Please enter an integer greater than 0:"
    n = gets.to_i
    break n if n > 0
    prompt "Thats not an integer greater than 0!"
  end
end

def get_operation
  loop do
    prompt "Enter 's' to compute the sum, 'p' to compute the product."
    o = gets.chomp
    break o if o == 's' || o == 'p'
    prompt "That's not 'p' or 's'!"
  end
end

def calculate_sum(number)
  (1..number).inject(:+)
end

def calculate_product(number)
  (1..number).inject(1, :*)
end

number = get_number
operation = get_operation

if operation == 's'   # if I knew procs, I'd probably pass a proc to the each
  sum = calculate_sum number
  prompt "The sum of the integers between 1 and #{number} is #{sum}."
else
  product = calculate_product number
  prompt "The product of the integers between 1 and #{number} is #{product}."
end
