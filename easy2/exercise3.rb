# Create a simple tip calculator. The program should prompt for a bill amount
# and a tip rate. The program must compute the tip and then display both the
# tip and the total amount of the bill.
#
# Example:
#
# What is the bill? 200
# What is the tip percentage? 15
#
# The tip is $30.0
# The total is $230.0

# decided not to use this on the first answer, but it's here in case I need it
# def positive_number?(num_string)
#  return false if num_string.empty? || num_string.start_with? '-'
#   return true if num_string.to_i.to_s == num_string
#   float_string = num_string.to_f.to_s
#   return true if float_string == num_string || float_string.chop == num_string
#   false
# end

print "What is the bill? "
bill = gets.to_f
print "What is the tip percentage? "
tip_percent = gets.to_f

tip = bill * (tip_percent / 100)
total = bill + tip

puts <<~OUTPUT
  The tip is $#{format('%.2f', tip)}
  The total is $#{format('%.2f', total)}
OUTPUT
