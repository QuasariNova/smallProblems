# Write a method that takes a floating point number that represents an angle
# between 0 and 360 degrees and returns a String that represents that angle in
# degrees, minutes and seconds. You should use a degree symbol (°) to represent
# degrees, a single quote (') to represent minutes, and a double quote (") to
# represent seconds. A degree has 60 minutes, while a minute has 60 seconds.
#
# You should use two digit numbers with leading zeros when formatting the
# minutes and seconds, e.g., 321°03'07".

# P
# Given a floating point number that represents an angle, return a string that
# represents the angle in degrees, minutes, and seconds.

# Rules:
#   - The angle will be between 0 and 360 degrees
#     - A degree has 60 minutes
#     - A minute has 60 seconds
#   - String must use degree symbol, which we can use a given constant for
#   - String must use ' to represent minutes and " to represent seconds
#   - 0 will return 0 degrees, 0 minutes, and 0 seconds
#   - 360 will return give us 360 degreees or 0 degrees
#   - Leading 0 should be formatted for minutes and seconds

# E
# dms(30) == %(30°00'00")
# dms(76.73) == %(76°43'48")
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# D
# floats and a string output

# A
# - Given a floating point number between 0 and 360
# - Calculate degrees, minutes, and seconds
#   1 Create new array
#   2 Calculate whole number and decimal
#   3 Push whole number to new array
#   4 Multiply decimal by 60 and repeat 2 for minutes and seconds
# - Format string and return

# C

DEGREE = "\xC2\xB0"
SUBDEGREE_VALUE = 60

def float_to_dms(float)
  angle = []

  until angle.size == 3
    angle << float.floor
    float -= angle.last
    float *= SUBDEGREE_VALUE
  end

  angle
end

# p float_to_dms(30) == [30, 0, 0]
# p float_to_dms(76.73) == [76, 43, 48]
# p float_to_dms(93.034773) == [93, 2, 5]

def dms(angle)
  degrees, minutes, seconds = float_to_dms(angle % 360)
  format("#{degrees}#{DEGREE}%02d'%02d\"", minutes, seconds)
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
puts dms(254.6) #== %(254°36'00") Rounding error
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# Since degrees are normally restricted to the range 0-360, can you modify the
# code so it returns a value in the appropriate range when the input is less
# than 0 or greater than 360?

p dms(400) == %(40°00'00")
p dms(-40) == %(320°00'00")
p dms(-420) == %(300°00'00")
