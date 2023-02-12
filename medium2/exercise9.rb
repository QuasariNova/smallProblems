# Bubble Sort is one of the simplest sorting algorithms available. It isn't an
# efficient algorithm, but it's a great exercise for student developers. In
# this exercise, you will write a method that does a bubble sort of an Array.

# A bubble sort works by making multiple passes (iterations) through the Array.
# On each pass, each pair of consecutive elements is compared. If the first of
# the two elements is greater than the second, then the two elements are
# swapped. This process is repeated until a complete pass is made without
# performing any swaps; at that point, the Array is completely sorted.

# We can stop iterating the first time we make a pass through the array without
# making any swaps; at that point, the entire Array is sorted.

# For further information, including pseudo-code that demonstrates the
# algorithm as well as a minor optimization technique, see the Bubble Sort
# wikipedia page.

# Write a method that takes an Array as an argument, and sorts that Array using
# the bubble sort algorithm as just described. Note that your sort will be
# "in-place"; that is, you will mutate the Array passed as an argument. You may
# assume that the Array contains at least 2 elements.

# p
# Given an array, perform a bubble sort

# Rules
# Input: Array
# Output: Mutate Array
# - Bubble sort iterates through array comparing elements
# - If the current is > than the next, it swaps
# - It will fully iterate even if it swaps
# - It only stops when a full iteration has no swaps

# e
# array = [5, 3]
# bubble_sort!(array)
# array == [3, 5]

# array = [6, 2, 7, 1, 4]
# bubble_sort!(array)
# array == [1, 2, 4, 6, 7]

# array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
# bubble_sort!(array)
# array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

# d
# Array

# a
# - Given an array arr
# - Loop until no swaps take place
#   - Iterate over all elements save the last
#     - Compare if the current element is > than the next
#     - If so swap
# - Return array

def bubble_sort!(arr)
  loop do
    swapped = false

    arr[0...-1].each_index do |i|
      if arr[i] > arr[i + 1]
        arr[i + 1], arr[i] = arr[i..i + 1]
        swapped = true
      end
    end

    break unless swapped
  end
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
