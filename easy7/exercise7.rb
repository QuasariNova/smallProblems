# Write a method that takes an Array of integers as input, multiplies all the
# numbers together, divides the result by the number of entries in the Array,
# and then prints the result rounded to 3 decimal places. Assume the array is
# non-empty.

# p
# Given an array of integers, mutliply all integers together output the result
# divided by the size of the array with results rounded to 3 decimal places.

# Rules
# Input: Array of integers
# Output: Print
# - Result should be rounded to 3 decimal places, padded with 0s
# - Array will not be empty

# e
# show_multiplicative_average([3, 5])                # => The result is 7.500
# show_multiplicative_average([6])                   # => The result is 6.000
# show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.
#                                                         667

# d
# Array, float

# a
# - Given array of integers nums
# - Iterate over nums, multiplying each element together
# - Divide the result of the multiplying by the size of nums
# - Output the result to 3 decimal places

def show_multiplicative_average(nums)
  result = nums.inject(1.0, &:*) / nums.size
  puts format('The result is %.3f', result)
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
