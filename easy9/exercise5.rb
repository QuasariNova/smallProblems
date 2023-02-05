# Write a method that takes a first name, a space, and a last name passed as a
# single String argument, and returns a string that contains the last name, a
# comma, a space, and the first name.

# p
# Given a string in "First_name Last_name" format, convert to
# "Last_name, First_name" format.

# Input: String
# Output: String
# - Output must be separated by a , and space

# e
# swap_name('Joe Roberts') == 'Roberts, Joe'

# d
# String...Array

# a
# - Given a string str formated as a space separated two name name
# - Split str into separate names, names
# - Reverse names and join back into a string with ", " separating it

def swap_name(name)
  name.split.reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'
