require 'docking_station'

describe DockingStation do
  it { should respond_to :release_bike }

  let(:bike) { subject.release_bike }
  before { bike }

  it 'releases bike' do
    expect(bike).to be_working
  end

  it 'shows the bike is docked' do
    expect(subject.dock_bike(bike)).to eq bike
  end

  it 'should raise an error if no bikes are free' do
    expect { 20.times { subject.release_bike } }.to raise_error('No bike is free')
  end

  it 'should raise an error if all docks are full' do
    expect { 20.times { subject.dock_bike(bike) } }.to raise_error('No dock is free')
  end

end
