# Write a method that determines the mean (average) of the three scores passed
# to it, and returns the letter value associated with that grade.

# Numerical Score Letter 	Grade
# 90 <= score <= 100 	'A'
# 80 <= score < 90 	'B'
# 70 <= score < 80 	'C'
# 60 <= score < 70 	'D'
# 0 <= score < 60 	'F'

# Tested values are all between 0 and 100. There is no need to check for
# negative values or values greater than 100.

# p
# Given three scores, average them together and find the letter grade
# associated with the number.

# Rules
# Input: 3 Integers
# Output: String
# - Grades are between 0 and 100, no need to check
# - min A >= 90
# - min B >= 80
# - min C >= 70
# - min D >= 60
# - min F >= 0

# e
# get_grade(95, 90, 93) == "A"
# get_grade(50, 50, 95) == "D"

# d
# Integers, String

# a
# - Given three grades
# - average grades
# - Calculate letter grade

def letter_grade(num_grade)
  case
  when num_grade >= 90 then 'A'
  when num_grade >= 80 then 'B'
  when num_grade >= 70 then 'C'
  when num_grade >= 60 then 'D'
  else                      'F'
  end
end

def get_grade(one, two, three)
  letter_grade((one + two + three) / 3)
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
