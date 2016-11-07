class Car

  attr_reader :colour, :model, :fuel, :speed


  def initialize(colour, model, fuel, speed, driver)
    @colour = colour
    @model = model
    @fuel = fuel
    @speed = speed
    @driver = driver
    @passengers = []
  end

  def accelerate
    @speed += 10
    @fuel -= 5
  end

  def brake
    @speed -= 10 if (@speed > 0)
  end

  def get_driver_name
    return @driver.name
  end

  def pick_up_passenger(new_passenger)
    @passengers.push(new_passenger)
  end

  def count_passengers
    @passengers.count
  end



end