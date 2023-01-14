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

def prompt(string)
  puts ">> #{string}"
end

number = loop do
           prompt "Please enter an integer greater than 0:"
           n = gets.to_i
           break n if n > 0
           prompt "Thats not an integer greater than 0!"
         end

operation = loop do
              prompt "Enter 's' to compute the sum, 'p' to compute the product."
              o = gets.chomp
              break o if o == 's' || o == 'p'
              prompt "That's not 'p' or 's'!"
            end

if operation == 's'   # if I knew procs, I'd probably pass a proc to the each
  sum = 0
  (1..number).each { |n| sum += n }
  prompt "The sum of the integers between 1 and #{number} is #{sum}."
else
  product = 1
  (1..number).each { |n| product *= n }
  prompt "The product of the integers between 1 and #{number} is #{product}."
end
