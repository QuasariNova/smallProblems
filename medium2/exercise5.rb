# A triangle is classified as follows:

#     equilateral All 3 sides are of equal length
#     isosceles 2 sides are of equal length, while the 3rd is different
#     scalene All 3 sides are of different length

# To be a valid triangle, the sum of the lengths of the two shortest sides must
# be greater than the length of the longest side, and all sides must have
# lengths greater than 0: if either of these conditions is not satisfied, the
# triangle is invalid.

# Write a method that takes the lengths of the 3 sides of a triangle as
# arguments, and returns a symbol :equilateral, :isosceles, :scalene, or
# :invalid depending on whether the triangle is equilateral, isosceles,
# scalene, or invalid.

# p
# Given three sides of a triangle, determine if it is isosceles, scalene,
# equilatoer, or an invalid triangle

# Rules
# Input: 3 Numbers
# Output: Symbol
# - Valid Triangles
#    - have 3 sides that are > 0 in length
#    - The sum of the 2 smaller > largest
# - Equilateral all three size are the same
# - isocelese, two of the lengths are the same
# - scalene, none of the lengths are the same

# e
# triangle(3, 3, 3) == :equilateral
# triangle(3, 3, 1.5) == :isosceles
# triangle(3, 4, 5) == :scalene
# triangle(0, 3, 3) == :invalid
# triangle(3, 1, 1) == :invalid

# d
# Array

# a
# Give 3 lenths of size named sides
# Check if triangle is valid, otherwise return :invalid
# Check how many sides are the same
# Output type of triangle

def invalid?(sides)
  smaller_sides = sides.dup
  smaller_sides.delete_at(sides.index(sides.max))

  sides.size != 3 || sides.any? { |side| side <= 0 } ||
    sides.max >= smaller_sides.sum
end

def triangle(*sides)
  return :invalid if invalid?(sides)

  case sides.uniq.size
  when 1 then :equilateral
  when 2 then :isosceles
  else :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
