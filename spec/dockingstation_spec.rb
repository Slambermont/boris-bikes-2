require 'docking_station'

describe DockingStation do
  it { should respond_to :release_bike }

  it 'releases bike' do
  bike = subject.release_bike
  it expect(bike).to respond_to :working?
end

end
