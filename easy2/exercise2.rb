# Build a program that asks a user for the length and width of a room in meters
# and then displays the area of the room in both square meters and square feet.
# 
# Note: 1 square meter == 10.7639 square feet
#
# Do not worry about validating the input at this time.
#
# Example Run
#
# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).
#
# Original answer:
# puts 'Enter the length of the room in meters:'
# length = gets.to_f
# puts 'Enter the width of the room in meters:'
# width = gets.to_f
#
# area = length * width
# area_ft = 10.7639 * area
# puts "The area of the room is #{area} square meters (#{area_ft} square feet)."
#
# The solution provided seperates the magic number 10.7639 as a constant for
# better readability. In code review, I've had that pointed out, so I need to
# remember that it's better to make a constant than just use some number out of
# the blue.
#
# The solution also uses the Float#round method. Cool
#
# Further Exploration:
# Modify this program to ask for the input measurements in feet, and display
# the results in square feet, square inches, and square centimeters.

SQFEET_TO_SQINCHES = 144
SQINCHES_TO_SQCM = 6.4516

puts 'Enter the length of the room in feet:'
length = gets.to_f

puts 'Enter the width of the room in meters: '
width = gets.to_f

area_ft2 = length * width
area_in2 = area_ft2 * SQFEET_TO_SQINCHES
area_cm2 = area_in2 * SQINCHES_TO_SQCM

puts "The area of the room is #{area_ft2.round(2)} square feet " + \
     "(#{area_in2.round(2)} square inches or #{area_cm2.round(2)} " + \
     "square centimeters)."
