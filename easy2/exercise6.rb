# Print all odd numbers from 1 to 99, inclusive, to the console, with each
# number on a separate line.
#
# Original Answer:
# Array(1..99).each { |n| puts n if n.odd? } # Array is superflous, the range 
#                                              has Range#each...
#
# Further Exploration:
# Repeat this exercise with a technique different from the one you just used,
# and different from the solution shown above. You may want to explore the use
# Integer#upto or Array#select methods, or maybe use Integer#odd?
#
# Let's look at Integer#upto
# Its upto(limit), it creates a block that iterates from the caller to the 
# passed value, its basically just an each over my array made from an array. I
# think I'll use something different. 
# Let's try Range#step
# It's step(n = 1) where it iterates the range increasing by step

(1..99).step(2) { |n| puts n }
