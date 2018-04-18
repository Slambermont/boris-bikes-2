require_relative 'bike'

class DockingStation
  attr_reader :dock

  def initialize
    @dock = []
    @bike_free = true
  end

  def release_bike
    raise Exception if @bike_free == false
    @bike_free = false
    Bike.new
  end

  def dock_bike(bike)
    @dock << bike
    'Bike docked'
  end
end
