require_relative 'bike'

class DockingStation
attr_reader :bike

  def initialize
    @bike_count = []
  end

  def release_bike
    fail 'No bikes available' if @bike_count.empty?
    @bike_count.pop
  end

  def dock(bike)
    fail "Dock is full" if @bike_count.count >= 20
    @bike_count << bike
  end
end
