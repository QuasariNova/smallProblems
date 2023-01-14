# Write a method that will take a short line of text, and print it within a box.
#
# Example:
#
# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
#
# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+
#
# You may assume that the input will always fit in your terminal window.

# Given a short line of text named 'text'
# Create an array of strings containing +-, | , | , | , and +-
# Get the length of 'text' and add that many -'s and  's to the 0,1,3,4 strings
# Add the string to the 2 string
# Add -+,  |,  |,  |, -+ to the end of the elements in the string array

# my original solution...bad
# def box_left(i)
#   if i == 0 || i == 4
#     '+-'
#   else
#     '| '
#   end
# end
#
# def box_middle(i, text)
#   return text if i == 2
#   string = ''
#   text.length.times do
#     if i == 0 || i == 4
#       string << '-'
#     else
#       string << ' '
#     end
#   end
#   string
# end
#
# def box_right(i)
#   if i == 0 || i == 4
#     '-+'
#   else
#     ' |'
#   end
# end
#
# def print_in_box(text)
#   array = [nil, nil, nil, nil, nil]
#   5.times do |i|
#     array[i] = box_left(i)
#
#     array[i] << box_middle(i, text)
#
#     array[i] << box_right(i)
#   end
#   puts array
# end

# Apparently if * a string, it just get's repeated that many times. I didn't
# have to loop or anything!

# def print_in_box(message)
#   horizontal_rule = "+#{'-' * (message.size + 2)}+"
#   empty_line = "|#{' ' * (message.size + 2)}|"
#
#   puts horizontal_rule
#   puts empty_line
#   puts "| #{message} |"
#   puts empty_line
#   puts horizontal_rule
# end

# print_in_box('To boldly go where no one has gone before.')
# print_in_box('')

# Further exploration, try truncating when message + 4 > 80
# Try word wrapping.
# let's go for wordwrapping, it'll basically be two birds one stone

def print_message(message)
  last_start = 0
  while last_start < message.length
    length = [message.length - last_start, 76].min

    # If we are max size, we search for a space so that we don't split words
    # across lines. This will not work if there are no spaces...I assume quotes
    unless length < 76
      length -= 1 until message[last_start + length] == ' '
    end
    stop = last_start + length
    string = message[last_start...stop]
    string = string.center(76)
    puts "| #{string} |"
    last_start = stop # we start at stop next time to ignore the space.
  end
end

def print_in_box(message)
  length = [message.length + 2, 78].min
  horizontal_rule = "+#{'-' * length}+"
  empty_line = "|#{' ' * length}|"

  puts horizontal_rule
  puts empty_line
  print_message(message)
  puts empty_line
  puts horizontal_rule
end

print_in_box <<~QUOTE.delete("\n")
  Sometimes we make the process more complicated than we need to. We will never
  make a journey of a thousand miles by fretting about how long it will take or
  how hard it will be. We make the journey by taking each day step by step and
  then repeating it again and again until we reach our destination. ― Joseph B.
  Wirthlin
QUOTE
