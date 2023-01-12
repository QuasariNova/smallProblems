# Write a method that takes a positive integer, n, as an argument, and displays
# a right triangle whose sides each have n stars. The hypotenuse of the
# triangle (the diagonal side in the images below) should have one end at the
# lower-left of the triangle, and the other end at the upper-right.
#
# Examples:
#
# triangle(5)
#
#     *
#    **
#   ***
#  ****
# *****
#
# triangle(9)
#
#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********
#

# def triangle(n)
#   n.times do |i|
#     string = '*' * (i + 1) # i will start at 0
#     string = string.rjust(n)
#     puts string
#   end
# end

def triangle(n, corner='br')
  i = 1
  finish = n
  iterate_by = 1
  if corner[0] == 't'
    i = n
    finish = 1
    iterate_by = -1
  end

  until i == finish
    string = '*' * i
    string = corner[1] == 'r' ? string.rjust(n) : string.ljust(n)
    puts string
    i += iterate_by
  end
end

puts "triangle(5)\n\n"
triangle(5)

puts "\ntriangle(9, 'tl')\n\n"
triangle(9, 'tl')
