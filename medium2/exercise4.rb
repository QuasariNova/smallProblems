# Write a method that takes a string as an argument, and returns true if all
# parentheses in the string are properly balanced, false otherwise. To be
# properly balanced, parentheses must occur in matching '(' and ')' pairs.

# p
# Given a string, find out if the string has properly balanced parenthesis in it

# Rules
# Input: string
# Output: Boolean
# - Parenthesis must start with '('. ')' is invalid without a '('
# - If no Parenthesis in the string, return true
# - There must be the same number of '(' as ')'

# e
# balanced?('What (is) this?') == true
# balanced?('What is) this?') == false
# balanced?('What (is this?') == false
# balanced?('((What) (is this))?') == true
# balanced?('((What)) (is this))?') == false
# balanced?('Hey!') == true
# balanced?(')Hey!(') == false
# balanced?('What ((is))) up(') == false

# d
# array

# a
# - Given string str
# - Set open to 0
# - Iterate over each character in str
#   - If a character is '(' add 1 to open
#   - If a character is ')' subtract 1 from open
#   - If open is ever negative, return false
# - return whether open is not zero

# def balanced?(str)
#   open = 0
#   str.each_char do |char|
#     open += 1 if char == '('
#     open -= 1 if char == ')'
#     return false if open < 0
#   end
#   open == 0
# end

# There are a few other characters that should be matching as well. Square
# brackets and curly brackets normally come in pairs. Quotation marks(single
# and double) also typically come in pairs and should be balanced. Can you
# expand this method to take into account those characters?

OPEN_BRACKETS = ['(', '[', '{']
CLOSE_BRACKETS = [')', ']', '}']

def balanced?(str)
  open = [0, 0, 0]
  str.each_char do |char|
    open.map!.with_index do |current, index|
      current += 1 if OPEN_BRACKETS[index] == char
      current -= 1 if CLOSE_BRACKETS[index] == char
      return false if current < 0

      current
    end
  end
  open.all?(&:zero?)
end

p balanced?('What (is) this?') == true
p balanced?('What {is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((W{h}at) (is [th]is))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
