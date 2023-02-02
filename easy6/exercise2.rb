# Write a method that takes an array of strings, and returns an array of the
# same string values, except with the vowels (a, e, i, o, u) removed.

# P
# Given an array of strings, return an array of the same string values with
# vowels removed
#
# Rules:
#   - Input: Array of strings
#   - Output: Array of strings with vowels removed
#   - Return new array? I guess yes
#   - Return same strings? Maybe? I'm not going to.
#   - case insensitive

# e:
# remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# d:
# arrays

# a
# - Create new array
# - Iterate over input
#   - For each string element, remove vowels
#   - Add to new array
# - return new array

def remove_vowels(array_of_words)
  array_of_words.map do |word|
    word.chars.reject { |char| /[aeiou]/ =~ char.downcase }.join
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
