# A double number is a number with an even number of digits whose left-side
# digits are exactly the same as its right-side digits. For example, 44, 3333,
# 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

# Write a method that returns 2 times the number provided as an argument,
# unless the argument is a double number; double numbers should be returned
# as-is.

# p
# Given a number, determine if it is a double number and return it, or return
# double the number.

# Rules
# Input: Number
# Output: Number
# - Double numbers have even digits
# - Double numbers right half == left half
# - If the number is not a double number, multiply it by 2

# e
# twice(37) == 74
# twice(44) == 44
# twice(334433) == 668866
# twice(444) == 888
# twice(107) == 214
# twice(103103) == 103103
# twice(3333) == 3333
# twice(7676) == 7676
# twice(123_456_789_123_456_789) == 123_456_789_123_456_789
# twice(5) == 10

# d
# String

# a
# - Given number num
# - Check if num is a Double Number
#   - convert num to string
#   - check if left half == right
# - Return num if double number
# - Else return num * 2

def double_number?(num)
  str = num.to_s
  str[0...(str.size / 2)] == str[(str.size / 2)...str.size]
end

def twice(num)
  double_number?(num) ? num : num * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
p twice(1) == 2
