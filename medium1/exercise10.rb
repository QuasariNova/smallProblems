# def fibonacci(n)
#   first = last = 1

#   3.upto(n) { first, last = [last, first + last] }

#   last
# end

# def fibonacci_last(n)
#   fibonacci(n).to_s[-1].to_i
# end

# Further Exploration

# def fibonacci_last(nth)
#   last_2 = [1, 1]
#   3.upto(nth) do
#     last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
#   end

#   last_2.last
# end

# After a while, even this method starts to take too long to compute results.
# Can you provide a solution to this problem that will work no matter how big
# the number? You should be able to return results almost instantly. For
# example, the 123,456,789,987,745th Fibonacci number ends in 5.

#     0, 1  2  3  4  5  6  7  8  9
# 0   0, 1, 1, 2, 3, 5, 8, 3, 1, 4
# 10  5, 9, 4, 3, 7, 0, 7, 7, 4, 1
# 20  5, 6, 1, 7, 8, 5, 3, 8, 1, 9
# 30  0, 9, 9, 8, 7, 5, 2, 7, 9, 6
# 40  5, 1, 6, 7, 3, 0, 3, 3, 6, 9
# 50  5, 4, 9, 3, 2, 5, 7, 2, 9, 1
# 60  0, 1, 1, 2, 3, 5, 8, 3, 1, 4 # THIS IS A REPEAT OF 0s!
# 70  5, 9, 4, 3, 7, 0, 7, 7, 4, 1 # ANOTHER 10s...

# Theory, fibonacci last digit repeats at a frequence of 60
def fibonacci_last(n)
  first = last = 1

  n = n % 60
  return 0 if n == 0
  3.upto(n) { first, last = [last, (first + last) % 10]}

  last
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4
p fibonacci_last(123_456_789_987_745) # -> 5
