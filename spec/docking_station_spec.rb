require 'docking_station'

describe DockingStation do
    it { is_expected.to respond_to :release_bike} 
end


#release_bike returns a new instance of the Bike class
#a) gets a bike, and then b) expects the bike to be working

it 'release a bike' do
    bike = xxx.release_bike
    expect (bike).to be_working 
end

#describe DockingStation do
#    it {}
#    end
    
#end



#describe DockingStation do
#    it 'responds to release_bike' do
#    expect(subject).to respond_to :release_bike
#    end
#end