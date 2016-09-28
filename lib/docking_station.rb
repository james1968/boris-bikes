require_relative 'bike'

class DockingStation
attr_accessor :bike

    def release_bike
        raise Exception.new("There is no bike available to rent.") if @bike.nil?
        #fail("There is no bike available to rent.") unless @bike
       #Bike.new
    end

    def dock(bike)
      @bike = bike
    end
end

#station = DockingStation.new
#station.release_bike