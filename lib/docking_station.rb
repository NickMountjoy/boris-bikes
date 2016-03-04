class DockingStation

  attr_reader :bikes, :capacity

  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
    @capacity = DEFAULT_CAPACITY
  end

  def release_bike
    raise "NO BIKES" if empty?
    @bikes.pop
  end

  def park_bike(bike)
    raise "NO MORE BIKES PLEASE" if full?
    @bikes << bike
    @bikes.last
  end

  private

  def full?
    @bikes.length >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

end
