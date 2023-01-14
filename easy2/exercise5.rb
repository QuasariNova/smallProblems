# Write a program that will ask for user's name. The program will then greet
# the user. If the user writes "name!" then the computer yells back to the user.
#
# Examples
#
# What is your name? Bob
# Hello Bob.
#
# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?

# Original Answer:
# print "What is your name?"
# name = gets.chomp
#
# output = if name.ends_with? '!'
#            "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING?"
#          else
#            "Hello #{name}."
#          end
# puts ouptut
#
# Their solution uses an -1 index on the string. I forgot you could do this to
# chose characters from the end.
# The Further exploration wants me to modify their solution to use
# String#chomp! and String#chop! each
#
# String#chop!:
# print 'What is your name? '
# name = gets.chomp
#
# if name[-1] == '!'
#   name.chop!
#   puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
# else
#   puts "Hello #{name}."
# end
#
# String#chomp!

print 'What is your name? '
name = gets.chomp

if name[-1] == '!'
  name.chomp! '!'
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
