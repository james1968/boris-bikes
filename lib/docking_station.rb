require_relative 'bike'

class DockingStation
attr_reader :bike
attr_accessor :capacity

DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
    fail "Dock is full" if full?
    @bikes << bike
  end

  def capacity
    @capacity
  end

private

attr_reader :bikes

  def full?
    @bikes.length >= capacity
  end

  def empty?
    @bikes.empty?
  end

end
