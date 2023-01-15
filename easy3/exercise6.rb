# The || operator returns a truthy value if either or both of its operands are
# truthy. If both operands are falsey, it returns a falsey value. The &&
# operator returns a truthy value if both of its operands are truthy, and a
# falsey value if either operand is falsey. This works great until you need
# only one of two conditions to be truthy, the so-called exclusive or.
#
# In this exercise, you will write a method named xor that takes two arguments,
# and returns true if exactly one of its arguments is truthy, false otherwise.
# Note that we are looking for a boolean result instead of a truthy/falsy value
# as returned by || and &&.
#
# Examples:
#
# xor?(5.even?, 4.even?) == true
# xor?(5.odd?, 4.odd?) == true
# xor?(5.odd?, 4.even?) == false
# xor?(5.even?, 4.odd?) == false
#
# The tests above should print true.

def xor?(left, right)
  !!(!left && right || left && !right) # !! forces a boolean
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false

# Further Exploration
#
# Can you think of a situation in which a boolean xor method would be useful?
# Suppose you were modeling a light at the top of a flight of stairs wired in
# such a way that the light can be turned on or off using either the switch at
# the bottom of the stairs or the switch at the top of the stairs. This is an
# xor configuration, and it can be modeled in ruby using the xor method. Think
# of some additional examples.
#
# || and && are so-called short circuit operators in that the second operand is
# not evaluated if its value is not needed. Does the xor method perform
# short-circuit evaluation of its operands? Why or why not? Does short-circuit
# evaluation in xor operations even make sense?
#
# My examples:
# XORs are great for inversion. Say you have a two door mantrap and you want
# only one door to be unlocked at a time with a switch at a security station
# controlling both doors. With XOR, you could have true for the locked door and
# false for the unlocked door, by XORing both with TRUE, they flip around. It's
# also good. The bitwise xor is good to use with a mask to change specific bits
# as well. Which is great if you are passing a great deal of true/false flags
# as a numeric value.
#
# XOR can't be short-circuiting, because it does not have a state that does not
# depend on both sides.
