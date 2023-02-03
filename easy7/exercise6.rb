# Modify the method from the previous exercise so it ignores non-alphabetic
# characters when determining whether it should uppercase or lowercase each
# letter. The non-alphabetic characters should still be included in the return
# value; they just don't count when toggling the desired case.

# p
# Given a string, return a new string that contains the same message, but with
# alpha characters alternating uppercase and lowercase.

# Rules
# Input: string
# Ouptut: new string
# - Alpha characters should start with an uppercase and alternate between
#   lowercase and uppercase
# - Ignore non alpha characters when determining what is upper or lower
# - non alpha characters are unmodified

# e
# staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# staggered_case('ALL CAPS') == 'AlL cApS'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

# d
# Strings and an array of characters

# a
# - For a given string str
# - Assign a bool need_cap to true
# - iterate over characters in str
#   - if char is alpha, change to upcase / lowercase and invert need_cap
#   - if not just pass character
# return new string

def staggered_case(str)
  need_cap = true
  str.chars.map do |char|
    next char unless char =~ /[A-Za-z]/

    need_cap = !need_cap # just done here to save a line
    if !need_cap # since we prematurely flipped it, we look for opposite
      char.upcase
    else
      char.downcase
    end
  end.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
