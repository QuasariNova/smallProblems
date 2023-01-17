# Write a method that takes a year as input and returns the century. The return
# value should be a string that begins with the century number, and ends with
# st, nd, rd, or th as appropriate for that number.
#
# New centuries begin in years that end with 01. So, the years 1901-2000
# comprise the 20th century.
#
# Examples:
# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'

def ordinal_suffix(number)
  return 'th' if number % 100 > 10 && number % 100 < 20
  return 'st' if number % 10 == 1
  return 'nd' if number % 10 == 2
  return 'rd' if number % 10 == 3
  'th'
end

def century(year)
  century = year / 100

  century.to_s + ordinal_suffix(century)
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'
