# A triangle is classified as follows:

#     right One angle of the triangle is a right angle (90 degrees)
#     acute All 3 angles of the triangle are less than 90 degrees
#     obtuse One angle is greater than 90 degrees.

# To be a valid triangle, the sum of the angles must be exactly 180 degrees,
# and all angles must be greater than 0: if either of these conditions is not
# satisfied, the triangle is invalid.

# Write a method that takes the 3 angles of a triangle as arguments, and
# returns a symbol :right, :acute, :obtuse, or :invalid depending on whether
# the triangle is a right, acute, obtuse, or invalid triangle.

# You may assume integer valued angles so you don't have to worry about
# floating point errors. You may also assume that the arguments are specified
# in degrees.

# p
# Given the three angles of a triangle, determine if it is right, acute,
# obtuse, or invalid.

# Rules
# Input: Integers, Integers, Integers
# Output: Symbol
# - Invalid if angles don't add up to 180
# - Invalid if any angle is <= 0
# - right if one angle is 90
# - acute if all three angles < 90
# - obtuse if one angle > 90

# e
# triangle(60, 70, 50) == :acute
# triangle(30, 90, 60) == :right
# triangle(120, 50, 10) == :obtuse
# triangle(0, 90, 90) == :invalid
# triangle(50, 50, 50) == :invalid

# d
# array

# a
# Given a array of 3 angles
# return :invalid if the angles array does not have 3 elements
# return :invalid if one of the angles is <= 0
# return :invalid if the angles don't add to 180
# find the max value in angles array
# if max > 90, return :obtuse
# if max == 90, return :right
# return :acute

def valid?(triangle)
  triangle.size == 3 && triangle.sum == 180 && !triangle.any? do |angle|
    angle <= 0
  end
end

def triangle(*angles)
  return :invalid unless valid?(angles)
  max_angle = angles.max
  return :obtuse if max_angle > 90
  return :right if max_angle == 90
  :acute
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
