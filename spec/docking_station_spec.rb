require 'docking_station'
DEFAULT_CAPACITY = 20
describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it { is_expected.to respond_to(:dock).with(1).argument }

  it "releases working bikes" do
    @twentybikes = Bike.new
    expect(@twentybikes).to be_working
  end

  it "docks something" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq [bike]
  end

  describe 'initialization' do
    subject { DockingStation.new }
    let(:bike) { Bike.new }
    it 'defaults capacity' do
      described_class::DEFAULT_CAPACITY.times do
        subject.dock(bike)
      end
      expect{ subject.dock(bike) }.to raise_error 'Docking station full'
    end
  end

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
    it "should not release infinite bikes" do
      expect {subject.release_bike}.to raise_error ("Oh no! No bikes available!")
    end
    it "should not release a broken bike" do
      expect{subject.release_bike}.to raise_error ("Oh no! No bikes available!")
    end
  end

  describe '#dock' do
    it "should not accept more than capacity" do
      subject.capacity.times { subject.dock Bike.new}
      expect { subject.dock Bike.new}.to raise_error ("Docking station full")
    end
  end
end
