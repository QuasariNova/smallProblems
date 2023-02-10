# A collection of spelling blocks has two letters per block, as shown in this
# list:

# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M

# This limits the words you can spell with the blocks to just those words that
# do not use both letters from any given block. Each letter in each block can
# only be used once.

# Write a method that returns true if the word passed in as an argument can be
# spelled from this set of blocks, false otherwise.

# p
# Given a string, check if it can be spelled using given spelling blocks

# Rules
# Input: string
# Output: boolean
# - Each spelling block has two characters
# - Each spelling block can only be used once
# - The words are case insensitive

# e
# block_word?('BATCH') == true
# block_word?('BUTCH') == false
# block_word?('jest') == true

# d
# Array: Create a nested array of blocks

# a
# Given a string str
# Iterate over each character and transform them into a block
# Remove duplicates from the transformed value
# Check if the size of the transformed value is the same as the string

BLOCKS = [['b', 'o'], ['x', 'k'], ['d', 'q'], ['c', 'p'], ['n', 'a'],
          ['g', 't'], ['r', 'e'], ['f', 's'], ['j', 'w'], ['h', 'u'],
          ['v', 'i'], ['l', 'y'], ['z', 'm']]

def block_word?(str)
  blocks = str.chars.map do |char|
    BLOCKS.find { |block| block.include?(char.downcase) }
  end.uniq
  blocks.size == str.size
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
