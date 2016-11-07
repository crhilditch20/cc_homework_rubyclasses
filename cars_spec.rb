require('minitest/autorun')
require('minitest/rg')
require_relative('cars')

class TestCar< Minitest::Test

def setup

  @car = Car.new("blue", "Fiat500", 100, 0)

end

  def test_car_colour
    assert_equal("blue", @car.colour)
  end

  def test_car_model
    assert_equal("Fiat500", @car.model)
  end

end