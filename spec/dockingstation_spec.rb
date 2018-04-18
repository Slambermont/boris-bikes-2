require 'docking_station'

describe DockingStation do
  it { should respond_to :release_bike }

  it 'releases bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'docks bike' do
    bike = subject.dock_bike(Bike.new)
    expect(bike).to eq 'Bike docked'
  end
end
