require_relative 'bike'

class DockingStation

  def initialize
    @bikes = []
  end

  def release_bike
    fail "No bike available" if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking Station Full' if @bikes.count >= 20
    @bikes << bike
  end

  attr_reader :bike
  #def bike
  #  @bike
  #end

end
