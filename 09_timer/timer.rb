class Timer
  attr_accessor :seconds
  attr_accessor :time_string

  def initialize
    @seconds = 0
  end

  def time_string
    hours = @seconds/60/60
    minutes = @seconds/60%60
    seconds = @seconds%60

    @time_string = add_leading_zero(hours) + ":" + 
      add_leading_zero(minutes) + ":" + 
        add_leading_zero(seconds)
  end

  def add_leading_zero(num)
    if num < 10
      str = "0" << num.to_s
    else
      str = num.to_s
    end
    str
  end
end

