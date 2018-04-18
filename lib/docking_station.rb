require_relative 'bike'

class DockingStation
  attr_reader :dock

  def initialize
    @dock = []
    @bike_free = true
  end

  def release_bike
    raise 'No bike is free' if @bike_free == false
    @bike_free = false
    Bike.new
  end

  def dock_bike(bike)
    raise 'No dock is free' if @bike_free == true
    @bike_free = true
    @dock << bike
    'Bike docked'
  end
end
