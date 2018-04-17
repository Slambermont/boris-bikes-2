require 'docking_station'

describe DockingStation do
  subject { DockingStation.new }
  it { should respond_to(:release_bike) }
end
