# Write a recursive method that computes the nth Fibonacci number, where nth is
# an argument to the method.

# p

# Rules:
# Input: Integer
# Output: Integer
# - when n is 1 or 2, it will always return 1
# - fib(n) = fib(n -1) + fib(n - 2)

# e
# fibonacci(1) == 1
# fibonacci(2) == 1
# fibonacci(3) == 2
# fibonacci(4) == 3
# fibonacci(5) == 5
# fibonacci(12) == 144
# fibonacci(20) == 6765

# d
# Integers

# a
# - Given an integer n
# - If n <= 2, return 1
# - Call this function for n - 1 and n - 2 and add results together

def fibonacci(n)
  return 1 if n <= 2
  fibonacci(n - 1) + fibonacci(n - 2)
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
