require_relative 'plane'
require_relative 'weather'

AIRPORT_CAPACITY = 10

class Airport
  include Forecast

  attr_accessor :hangar

  def initialize
    @hangar = []
  end

  def land plane
    fail 'stormy weather, permission denied' if forecast == :stormy
    fail 'airport full, permission denied' if full?
    hangar << plane
    plane.landed
  end

  def take_off plane
    fail 'stormy weather, permission denied' if forecast == :stormy
    plane.flying
  end

  def forecast
    Forecast.now
  end

  def full?
    hangar.count >= AIRPORT_CAPACITY
  end

end