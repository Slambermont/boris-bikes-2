require_relative 'bike'

class DockingStation
  attr_reader :docks

  def initialize
    @docks = 20
  end

  def release_bike
    raise 'No bike is free' if @docks.zero?
    @docks -= 1
    Bike.new
  end

  def dock_bike(bike)
    raise 'No dock is free' if @docks > 20
    @docks += 1
    bike
  end
end
