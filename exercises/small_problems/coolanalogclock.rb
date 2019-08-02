def format(num)
    if (0..9).include? (num)
        num = num.to_s.prepend('0')
    end
    num
end

def time_of_day(num)
    
    hour = nil
    min = nil
    if num.zero?
        hour = "00"
        min = "00"
        elsif num > 0
        current_time = 0 + num
        if current_time > 1440
            current_time = 0 + (current_time % 1440)
        end
        min = current_time % 60
        hour = (current_time - min) / 60
        elsif num < 0
        current_time = 1440 + num
        if current_time < 0
            current_time = 1440 + (current_time % 1440)
            current_time = 0 + (current_time % 1440)
        end
        min = current_time % 60
        hour = (current_time - min) / 60
    end
    puts "#{format(hour)}:#{format(min)}"
end

time_of_day(0)
time_of_day(-3)
time_of_day(35)
time_of_day(-1437)
time_of_day(3000)
time_of_day(800)
time_of_day(-4231)