# Write a method that takes a string argument, and returns true if all of the
# alphabetic characters inside the string are uppercase, false otherwise.
# Characters that are not alphabetic should be ignored.
#
# Examples:
#
# uppercase?('t') == false
# uppercase?('T') == true
# uppercase?('Four Score') == false
# uppercase?('FOUR SCORE') == true
# uppercase?('4SCORE!') == true
# uppercase?('') == true

def uppercase?(string)
  purged_string = string.delete('^a-z')
  purged_string == purged_string.upcase
end

puts uppercase?('t') == false
puts uppercase?('T') == true
puts uppercase?('Four Score') == false
puts uppercase?('FOUR SCORE') == true
puts uppercase?('4SCORE!') == true
puts uppercase?('') == true

# The Solution uses just a upcase check without deleting nonalphabetic
# characters. That makes sense, as you can't upcase the other characters, me
# deleting them was superfluous.
#
# Further Exploration
#
# Food for thought: in our examples, we show that uppercase? should return true
# if the argument is an empty string. Would it make sense to return false
# instead? Why or why not?
#
# You could make the argument either way. Yes there are no alphabet characters
# that are uppercase, but it is true that all of them are in absense. Depends
# on how this will be used.
