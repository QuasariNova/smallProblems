# Write a method that takes two arguments, a positive integer and a boolean,
# and calculates the bonus for a given salary. If the boolean is true, the
# bonus should be half of the salary. If the boolean is false, the bonus should
# be 0.
#
# Examples:
#
# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000
#
# The tests above should print true.
#
# Given a positive integer named 'salary' and a boolean named 'bonus'
# if 'bonus is false, return 0
# otherwise return salary / 2

def calculate_bonus(salary, bonus)
  bonus ? salary / 2 : 0
  # I originally used two lines here, with the first being an if. Ternary works
  # better here.
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
