# Write a method that takes two Array arguments in which each Array contains a
# list of numbers, and returns a new Array that contains the product of every
# pair of numbers that can be formed between the elements of the two Arrays.
# The results should be sorted by increasing value.

# You may assume that neither argument is an empty Array.

# p
# Given two lists of numbers, return a new list that is all possible products
# of elements between the two array sorted by value.

# Rules
# Input: Array, Array
# Output: Array
# - No input array is empty
# - Output is sorted lowest to highest
# - Output arrays size should be the same as both input sizes multiplied
#   together

# e
# multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
# multiply_all_pairs([1, 2, 3], [5, 2]) == [2, 4, 5, 6, 10, 15]

# d
# Arrays

# a
# - Given two array of integers nums1 and nums2
# - Create an empty array named products
# - Iterate over nums1
#   - Iterate over nums2, adding the product between the element from nums1 and
#     nums2 to the array products
# - sort products and return it

def multiply_all_pairs(nums1, nums2)
  nums1.product(nums2).map { |pair| pair.inject(&:*) }.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
p multiply_all_pairs([1, 2, 3], [5, 2]) == [2, 4, 5, 6, 10, 15]
