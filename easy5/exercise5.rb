# Given a string that consists of some words (all lowercased) and an assortment
# of non-alphabetic characters, write a method that returns that string with
# all of the non-alphabetic characters replaced by spaces. If one or more
# non-alphabetic characters occur in a row, you should only have one space in
# the result (the result should never have consecutive spaces).
#
# Examples:
#
# cleanup("---what's my +*& line?") == ' what s my line '

# took me a while to look up how this regex worked
# + is used to signify that it's one or more characters that meet the last match
def cleanup(string)
  string.gsub(/[^a-z]+/, ' ')
end

puts cleanup("---what's my +*& line?") == ' what s my line '
