# The time of day can be represented as the number of minutes before or after
# midnight. If the number of minutes is positive, the time is after midnight.
# If the number of minutes is negative, the time is before midnight.
#
# Write a method that takes a time using this minute-based format and returns
# the time of day in 24 hour format (hh:mm). Your method should work with any
# integer input.
#
# You may not use ruby's Date and Time classes.
#
# Examples:
#
# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"
#
# Disregard Daylight Savings and Standard Time and other complications.
#
# MINUTES_IN_DAY = 1440
# MINUTES_IN_HOUR = 60
#
# def time_of_day(minutes)
#   time_in_minutes = minutes.abs % MINUTES_IN_DAY
#   time_in_minutes = MINUTES_IN_DAY - time_in_minutes if minutes < 0
#
#   # divmod could be used, but I still need to format
#   hours_string = format('%.2d', time_in_minutes / MINUTES_IN_HOUR)
#   minutes_string = format('%.2d', time_in_minutes % MINUTES_IN_HOUR)
#   "#{hours_string}:#{minutes_string}"
# end
#
# How would you approach this problem if you were allowed to use ruby's Date
# and Time classes?
SECONDS_IN_MINUTES = 60
SUNDAY_MIDNIGHT = Time.new(2023, 1, 15, 0, 0)
#
# def time_of_day(minutes)
#   time = SUNDAY_MIDNIGHT + minutes * SECONDS_IN_MINUTES
#   format('%.2d:%.2d', time.hour, time.min)
# end
#
# How would you approach this problem if you were allowed to use ruby's Date
# and Time classes and wanted to consider the day of week in your calculation?
# (Assume that delta_minutes is the number of minutes before or after midnight
# between Saturday and Sunday; in such a method, a delta_minutes value of -4231
# would need to produce a return value of Thursday 01:29.)
DAYNAMES = %w(Sunday Monday Tuesday Wednesday Thursday Friday Saturday)

def time_of_day(minutes)
  time = SUNDAY_MIDNIGHT + minutes * SECONDS_IN_MINUTES
  time_string = format('%.2d:%.2d', time.hour, time.min)
  "#{DAYNAMES[time.wday]} #{time_string}"
end

puts time_of_day(-4231) == "Thursday 01:29"
