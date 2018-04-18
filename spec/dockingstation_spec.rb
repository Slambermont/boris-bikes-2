require 'docking_station'

describe DockingStation do
  it { should respond_to :release_bike }

  it 'shows the empty dock' do
    expect(subject.dock).to eq []
  end

  let(:bike) { subject.release_bike }
  before { bike }

  it 'releases bike' do
    expect(bike).to be_working
  end

  it 'docks bike' do
    expect(subject.dock_bike(bike)).to eq 'Bike docked'
  end

  it 'shows the bike(s) docked' do
    subject.dock_bike(bike)
    expect(subject.dock).to include bike
  end

  it 'should raise an error if no bikes are free' do
    expect { subject.release_bike }.to raise_error(Exception)
  end
end
