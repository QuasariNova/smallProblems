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
MINUTES_IN_DAY = 1440
MINUTES_IN_HOUR = 60

def convert_to_minutes(time_string)
  time_split = time_string.split(':')
  time_split[0].to_i * MINUTES_IN_HOUR + time_split[1].to_i
end

def after_midnight(time_string)
  convert_to_minutes(time_string) % 1440
end

def before_midnight(time_string)
  (MINUTES_IN_DAY - convert_to_minutes(time_string)) % 1440
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0
