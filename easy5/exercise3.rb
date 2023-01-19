# As seen in the previous exercise, the time of day can be represented as the
# number of minutes before or after midnight. If the number of minutes is
# positive, the time is after midnight. If the number of minutes is negative,
# the time is before midnight.
#
# Write two methods that each take a time of day in 24 hour format, and return
# the number of minutes before and after midnight, respectively. Both methods
# should return a value in the range 0..1439.
#
# You may not use ruby's Date and Time methods.
#
# Examples:
#
# after_midnight('00:00') == 0
# before_midnight('00:00') == 0
# after_midnight('12:34') == 754
# before_midnight('12:34') == 686
# after_midnight('24:00') == 0
# before_midnight('24:00') == 0
# MINUTES_IN_DAY = 1440
# MINUTES_IN_HOUR = 60
#
# def convert_to_minutes(time_string)
#   time_split = time_string.split(':')
#   time_split[0].to_i * MINUTES_IN_HOUR + time_split[1].to_i
# end
#
# def after_midnight(time_string)
#   convert_to_minutes(time_string) % 1440
# end
#
# def before_midnight(time_string)
#   (MINUTES_IN_DAY - convert_to_minutes(time_string)) % 1440
# end
#
# How would these methods change if you were allowed to use the Date and Time
# classes?
require 'time'
TODAY = Time.strptime('00:00', '%H:%M')
TOMORROW = Time.strptime('24:00', '%H:%M')
SECONDS_IN_MINUTES = 60
HOURS_IN_DAYS = 1440

def get_time(time_string)
  Time.strptime(time_string, '%H:%M')
end

def after_midnight(time_string)
  minutes = (get_time(time_string) - TODAY).to_i / SECONDS_IN_MINUTES
  minutes % HOURS_IN_DAYS
end

def before_midnight(time_string)
  minutes = (TOMORROW - get_time(time_string)).to_i / SECONDS_IN_MINUTES
  minutes % HOURS_IN_DAYS
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0
