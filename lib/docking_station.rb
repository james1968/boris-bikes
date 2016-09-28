require_relative 'bike'

class DockingStation
attr_accessor :bike

    def release_bike
        fail 'No bikes available' unless @bike
        @bike
       #Bike.new
    end

    def dock(bike)
        fail "Dock is full" if @bike
      @bike = bike
    end
end

#station = DockingStation.new
#bike = Bike.new
#station.dock(bike)
#station.dock(bike)



#station.release_bike
