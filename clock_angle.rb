def clock_angle(time)
  time_array = time.split(":")
  hour = time_array[0].to_f
  minute = time_array[1].to_f
  minute_angle = ((minute/60)*360)
  if hour > 12 || hour < 1
    puts "Please enter the time in the format of ##:## (not military time)"
  else
      if hour == 12.0
      hour_angle = (360*((minute/60)/12))
    else
      hour_angle = (360*((hour/12)+((minute/60)/12)))
    end
    hands_angle = (hour_angle-minute_angle).abs
    if hands_angle > 180
      hands_angle = 360-hands_angle
    end
    puts hands_angle
  end
end
