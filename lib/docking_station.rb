require_relative 'bike'

class DockingStation

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bike available' if empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking Station Full' if full?
    @bikes << bike
  end

  #attr_reader :bike
  #def bike
  #  @bike
  #end

  private
  
  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.count >= 20
  end
end
