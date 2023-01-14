# Build a program that randomly generates and prints Teddy's age. To get the
# age, you should generate a random number between 20 and 200.
# 
# Example Output
# 
# Teddy is 69 years old!

age_range = Array(20..200)
puts "Teddy is #{age_range.sample} years old!"
