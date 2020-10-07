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
end