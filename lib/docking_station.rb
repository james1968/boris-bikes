require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

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
    @bikes.count >= DEFAULT_CAPACITY
  end
end
