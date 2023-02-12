# Write a method that returns the number of Friday the 13ths in the year given
# by an argument. You may assume that the year is greater than 1752 (when the
# United Kingdom adopted the modern Gregorian Calendar) and that it will remain
# in use for the foreseeable future.

# p
# Given a year greater than 1752, find out how many friday the 13ths were in
# the year.

# Rules
# Input: Integer
# Output: Integer
# - Year > 1752

# e
# friday_13th(2015) == 3
# friday_13th(1986) == 1
# friday_13th(2019) == 2

# d
# Date

# a
# - Given a year year
# - unlucky is set to zero
# - Loop 12 times
#   - For each loop check if the month in question has a friday the thirteenth
#     if so add 1 to unlucky
# - return unlucky

require 'date'

def friday_13th(year)
  unlucky = 0
  1.upto(12) do |month|
    unlucky += 1 if Date.new(year, month, 13).friday?
  end
  unlucky
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
