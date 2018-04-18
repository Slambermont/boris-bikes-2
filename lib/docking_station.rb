require_relative 'bike'

class DockingStation
  attr_reader :dock

  def initialize
    @dock = []
  end

  def release_bike
    Bike.new
  end

  def dock_bike(bike)
    @dock << bike
    "Bike docked"
  end
end
