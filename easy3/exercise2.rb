# Write a program that prompts the user for two positive integers, and then
# prints the results of the following operations on those two numbers:
# addition, subtraction, product, quotient, remainder, and power. Do not worry
# about validating the input.
#
# Example
#
# ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103

def prompt(string)
  string.lines.each { |s| puts "==> #{s}" }
end

numbers =
  [1, 2].map do |n|
    prompt "Enter positive integer ##{n}:"
    num = gets.to_i
    next num if num > 0
    prompt "Thats not a positive integer!"
  end

prompt <<~OUTPUT
  #{numbers[0]} + #{numbers[1]} = #{numbers[0] + numbers[1]}
  #{numbers[0]} - #{numbers[1]} = #{numbers[0] - numbers[1]}
  #{numbers[0]} * #{numbers[1]} = #{numbers[0] * numbers[1]}
  #{numbers[0]} / #{numbers[1]} = #{numbers[0] / numbers[1]}
  #{numbers[0]} % #{numbers[1]} = #{numbers[0] % numbers[1]}
  #{numbers[0]}**#{numbers[1]} = #{numbers[0]**numbers[1]}
OUTPUT
