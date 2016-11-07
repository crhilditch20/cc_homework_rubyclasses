require('minitest/autorun')
require('minitest/rg')
require_relative('cars')
require_relative('person')

class TestCar < Minitest::Test

def setup

  @person = Person.new("Claire", 35)
  @car = Car.new("blue", "Fiat500", 100, 0, @person)
  @passenger = Person.new("Jo", 35)

end

  def test_car_colour
    assert_equal("blue", @car.colour)
  end

  def test_car_model
    assert_equal("Fiat500", @car.model)
  end

  def test_accelerate
    @car.accelerate()
    assert_equal(10, @car.speed)
    assert_equal(95, @car.fuel)
  end

  def test_brake
    @car.brake()
    assert_equal(0, @car.speed)
  end

  def test_driver_name
    assert_equal("Claire", @car.get_driver_name)
  end

  def test_pick_up_passenger
    @car.pick_up_passenger(@passenger)
    result = @car.count_passengers()
    assert_equal(1, result)
  end
end