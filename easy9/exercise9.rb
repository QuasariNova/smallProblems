# Given the array...

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

# Write a program that prints out groups of words that are anagrams. Anagrams
# are words that have the same exact letters in them but in a different order.
# Your output should look something like this:
# ["demo", "dome", "mode"]
# ["neon", "none"]
# #(etc)

# p
# Given an array of words, print out groups of words that are anagrams.

# Rules
# Input: Array of Words
# Output: Print each group of anagrams as an array
# - Output must be formated like an array literal
# - Anagrams have the same characters in different order
# - Don't print groups you already printed

# e
# ["demo", "dome", "mode"]
# ["neon", "none"]
# #(etc)

# d
# Arrays and Strings

# a
# - Given an array of words
# - Take first element of words and remember it
# - Partition array into two groups, one that is an anagram of the first
#   element, and one that isn't
#   - To check if it's an anagram, split string into chars, sort, and compare
# - Output the anagram array
# - Do previous steps until the second partition is empty

def anagram?(str1, str2)
  str1.chars.sort == str2.chars.sort
end

# def print_anagrams(words)
#   return if words.count == 0
#   first = words.first

#   anagrams, not_anagrams = words.partition do |word|
#     anagram?(first, word)
#   end

#   p anagrams
#   print_anagrams(not_anagrams)
# end

def print_anagrams(words)
  while words.size > 0
    first = words.first

    anagrams, words = words.partition { |word| anagram?(first, word) }

    p anagrams
  end
end

print_anagrams(words)
