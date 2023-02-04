# Create a method that takes 2 arguments, an array and a hash. The array will
# contain 2 or more elements that, when combined with adjoining spaces, will
# produce a person's name. The hash will contain two keys, :title and
# :occupation, and the appropriate values. Your method should return a greeting
# that uses the person's full name, and mentions the person's title and
# occupation.

# Example:

# greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => "Hello, John Q Doe! Nice to have a Master Plumber around."

# p
# Given an array of strings and hash, print a greeting.

# Rules
# Input: array of strings, hash with :title and :occupation keys
# Output: Prints a greeting
# - Output format "Hello, #{full_name}! Nice to have a #{title} #{job} around."
# - Array contains 2 or more elements
# - Hash contains two keys :title and :occupation

# e
# greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => "Hello, John Q Doe! Nice to have a Master Plumber around."

# d
# array of strings, hash

# a
# - Given an array of strings and a hash with title and occupation
# - Combine array of strings to form a full name
# - Combine title and occupation values to form full job title
# - Format output string using full name and full job title

def greetings(name_arr, job_hsh)
  puts <<~TEXT.gsub("\n", '')
    Hello, #{name_arr.join(' ')}! Nice to have a
    #{job_hsh[:title]} #{job_hsh[:occupation]} around
    TEXT
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
