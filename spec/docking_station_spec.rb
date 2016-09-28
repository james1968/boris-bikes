require 'docking_station'

describe DockingStation do
    it { is_expected.to respond_to :release_bike}


#release_bike returns a new instance of the Bike class
#a) gets a bike, and then b) expects the bike to be working

it 'release a bike' do
    bike = subject.release_bike
    expect(bike).to be_working
end

it {is_expected.to respond_to(:dock).with(1).argument}

it 'bike is docked' do
  bike = Bike.new
  expect(subject.dock(bike)).to eq bike
end

it {is_expected.to respond_to (:bike) }

it 'returns docked bike' do
  bike = Bike.new
  subject.dock(bike)
  expect(subject.bike).to eq bike
end

end
