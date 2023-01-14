# Build a program that displays when the user will retire and how many years
# she has to work till retirement.
#
# Example:
#
# What is your age? 30
# At what age would you like to retire? 70
#
# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

print "What is your age? "
age = gets.to_i

print "At what age would you like to retire? "
retire_age = gets.to_i

year = Time.now.year
retirement_delta = retire_age - age
retirement_year = year + retirement_delta

puts <<~OUTPUT
  It's #{year}. You will retire in #{retirement_year}.
  You have only #{retirement_delta} years of work to go!
OUTPUT
