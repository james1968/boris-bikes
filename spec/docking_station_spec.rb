require 'spec_helper'

describe DockingStation do

  it {is_expected.to respond_to :release_bike}

  it 'releases working bikes' do
    bike = Bike.new
    expect(bike.working?).to eq(true)
  end

#Docks returned bike
  it {is_expected.to respond_to(:dock).with(1).argument}

  it {is_expected.to respond_to :bike}

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq @bike
  end

  describe '#release_bike' do
    it "raise an error if there are no bikes" do
      expect{subject.release_bike}.to raise_error 'No bikes available'
    end

    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
      end
    end

    describe '#dock' do
      it 'will not dock a bike if the docking station is full' do
        DockingStation::DEFAULT_CAPACITY.times {subject.dock(Bike.new)}
        expect{subject.dock(Bike.new)}.to raise_error 'Dock is full'
      end
    end
end
