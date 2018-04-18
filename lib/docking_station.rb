require_relative 'bike'

class DockingStation
  attr_reader :dock

  def initialize
    @dock = []
    @bike_free = false
  end

  def release_bike
    raise NoBikeError if @bike_free
    @bike_free = true
    Bike.new
  end

  def dock_bike(bike)
    @dock << bike
    'Bike docked'
  end
end
