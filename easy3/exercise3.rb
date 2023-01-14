# Write a program that will ask a user for an input of a word or multiple words
# and give back the number of characters. Spaces should not be counted as a
# character.
# 
# input:
# 
# Please write word or multiple words: walk
# 
# output:
# 
# There are 4 characters in "walk".
# 
# input:
# 
# Please write word or multiple words: walk, don't run
# 
# output:
# 
# There are 13 characters in "walk, don't run".

input =
loop do
  print "Please write a word or multiple words: "
  string = gets.chomp
  break string unless string.empty?
  puts "Please write something!"
end
split_input = input.split('')
split_input.delete(' ')

puts "There are #{split_input.size} characters in \"#{input}\"."
