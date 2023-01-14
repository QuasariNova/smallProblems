# Build a program that randomly generates and prints Teddy's age. To get the
# age, you should generate a random number between 20 and 200.
# 
# Example Output
# 
# Teddy is 69 years old!
#
# Original answer:
# age_range = Array(20..200)
# puts "Teddy is #{age_range.sample} years old!"
#
# The solution used rand(20..200) instead of Array(20..200).sample
# 
# Further Exploration:
# Modify this program to ask for a name, and then print the age for that
# person. For an extra challenge, use "Teddy" as the name if no name is entered.

puts '>> What is your name?'
print '>> '
name = gets.chomp
name = 'Teddy' if name.empty?
puts "#{name} is #{rand(20..200)} years old!"
