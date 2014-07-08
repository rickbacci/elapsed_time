 


### Takes a datetime, that has been converted into 'seconds since the epoch'
### and calulates the time that has elapsed from the datetime to the present.
### Returns the value as a string with: years, days, hours, minutes, and seconds.


def elapsed_time(seconds)

  time = {               ## time in seconds
      :year => 31536000, ## does not account for leap year
       :day => 86400, 
      :hour => 3600,
    :minute => 60,
    :second => 1  
  }

  now = Time.now.strftime("%s").to_i
  seconds = now - seconds

  final = []

  time.each do |key, val|
    total = ''

    if seconds / val >= 1

      total = (seconds / val)

      if total == 1
        final << total.to_s + " #{key}"
      else
        final << total.to_s + " #{key}s"
      end
   
      seconds %= val
    end
  end
  final.join(', ')
end

#p elapsed_time(1404787700)

## these are all from epoch
# seconds = 259200  # 3 days
# seconds = 262800  # 3 days 1 hour # 3660 left
# seconds = 262860  # 3 days 1 hour 1 minute # 60 left
# seconds = 262865  # 3 days 1 hour 1 minute 5 seconds


