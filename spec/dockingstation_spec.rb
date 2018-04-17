require 'docking_station'

describe DockingStation do
  it 'responds_to release_bike method' do
    expect(DockingStation.new).to respond_to(:release_bike)
  end
end
