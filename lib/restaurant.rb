class Restaurant
  attr_reader :opening_time,
              :name,
              :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hours)
    hours_open = @opening_time.to_i + hours
    hours_open.to_s + ":00"
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    if @opening_time.to_i < 12
      true
    else
      false
    end
  end

  def menu_dish_names
    exciting_menu = []
    @dishes.each do |dish|
      exciting_menu << dish.upcase
    end
    exciting_menu
  end

  def announce_closing_time(hours)
    if @opening_time.to_i < 12
      close = @opening_time.to_i + hours
      if close < 12
        "#{@name} will be closing at #{close.to_s + ":00"}AM"
      elsif close >= 12
        "#{@name} will be closing at #{close.to_s + ":00"}PM"
      end
    elsif @opening_time.to_i >= 12
      twelve_hour_time = (@opening_time.to_i - 12)
      close = (twelve_hour_time + hours)
      if close < 12
        "#{@name} will be closing at #{close.to_s + ":00"}PM"
      elsif close > 12
        (close - 12)
        "#{@name} will be closing at #{close.to_s + ":00"}AM"
      end
    end
  end
end