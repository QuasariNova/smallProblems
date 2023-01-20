# Write a method that takes a string argument and returns a new string that
# contains the value of the original string with all consecutive duplicate
# characters collapsed into a single character. You may not use String#squeeze
# or String#squeeze!.
#
# Examples:
#
# crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''
#
# Original Answer:
# def crunch(string)
#   crunched_string = ''
#   index = 0
#
#   until index == string.length
#     crunched_string << string[index] unless crunched_string[-1] ==
#                                             string[index]
#     index += 1
#   end
#
#   crunched_string
# end
#
# Further Exploration:
# 1.You may have noticed that we continue iterating until index points past the
# end of the string. As a result, on the last iteration text[index] is the last
# character in text, while text[index + 1] is nil. Why do we do this? What
# happens if we stop iterating when index is equal to text.length?
#
#
# In the algorithm used for the solution by launch school, the character is
# only added if the next character is different. Due to this, they are adding
# the last character in a sequence, and if they don't go past the end of the
# string, they will not capture the last character. This works because
# referencing an index that does not exist defaults to nil.
#
#
# 2.Can you determine why we didn't use String#each_char or String#chars to
# iterate through the string? How would you update this method to use
# String#each_char or String#chars?
#
#
# I assume it's because the algorithm chosen. Again since they chose to add the
# last character in a sequence, it does not work if you don't iterate past it.
# Here's how I would adjust my solution to #each_char

def crunch(string)
  crunched_string = ''

  string.each_char do |char|
    crunched_string << char unless char == crunched_string[-1]
  end

  crunched_string
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
