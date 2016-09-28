require_relative 'bike'

class DockingStation
attr_accessor :bike

    def release_bike
        fail 'No bikes available' unless @bike
        @bike
       #Bike.new
    end

    def dock(bike)
      @bike = bike
    end
end

#station = DockingStation.new
#station.release_bike
