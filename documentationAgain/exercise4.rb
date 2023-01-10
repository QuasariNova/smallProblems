# The Array#bsearch method is used to search ordered Arrays more quickly than
# #find and #select can. Assume you have the following code:
#
# a = [1, 4, 8, 11, 15, 19]
#
# How would you search this Array to find the first element whose value exceeds
# 8?

a = [1, 4, 8, 11, 15, 19]

# from https://docs.ruby-lang.org/en/2.7.0/Array.html#method-i-bsearch
# bsearch {|x| block } → elem
# The minimum mode requires the block to require a true or false return value.
# As such it will return the first value that returns true.

puts(a.bsearch { |x| x > 8 })
