# Using the multiply method from the "Multiplying Two Numbers" problem, write a
# method that computes the square of its argument (the square is the result of
# multiplying a number by itself).
#
# Example:
#
# square(5) == 25
# square(-8) == 64

def multiply(left_num, right_num)
  left_num * right_num
end

def square(number)
  multiply(number, number)
end

puts square(5) == 25
puts square(-8) == 64

# Further Exploration
# What if we wanted to generalize this method to a "power to the n" type
# method: cubed, to the 4th power, to the 5th, etc. How would we go about doing
# so while still using the multiply method?

def power(number, exponent)
  return 1 if exponent == 0
  value = multiply(number, power(number, exponent.abs - 1))
  exponent < 0 ? 1 / value.to_f : value
end

puts power(2,8) == 256
puts power(5,2) == 25
puts power(-8, 3) == -512
puts power(8, -3) == 1 / 512.0
