class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
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
    @bikes.length >= 20
  end

  def empty?
    @bikes.empty?
  end

end  
