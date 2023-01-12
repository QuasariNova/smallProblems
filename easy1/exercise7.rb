# Mad libs are a simple game where you create a story template with blanks for
# words. You, or another player, then construct a list of words and place them
# into the story, creating an often silly or funny story as a result.
#
# Create a simple mad-lib program that prompts for a noun, a verb, an adverb,
# and an adjective and injects those into a story that you create.
#
# Example
#
# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly
#
# Do you walk your blue dog quickly? That's hilarious!

def get_input(word_type)
  loop do
    print "Enter a #{word_type}: "
    word = gets.chomp
    break word unless word.empty?
    puts "Please enter a word, empty strings aren't valid."
  end
end

noun = get_input 'noun'
verb = get_input 'verb'
adjective = get_input 'adjective'
adverb = get_input 'adverb'

puts "The #{adjective} #{noun} #{adverb} #{verb} a trashcan! Wow!"
