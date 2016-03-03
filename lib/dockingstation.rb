require_relative 'bike.rb'

class DockingStation
    DEFAULT_CAPACITY = 20
		attr_reader :bikes, :capacity

	def initialize(capacity=DEFAULT_CAPACITY)
		@bikes = []
    @capacity = capacity
	end

	def dock(bike)
		fail "Station is full" if full?
		@bikes << bike
	end

	def release_bike
		fail "No bikes available" if empty?
    bikes_all_broken = true
    @bikes.each do |bike|
      if bike.broken == false
        bikes_all_broken = false
        @bikes.delete(bike)
        return bike
        break
      end
    end
    fail 'No bikes available' if bikes_all_broken == true
end

	private

	def full?
	 @bikes.length >= @capacity
	end

	def empty?
	 @bikes.length < 1
	end

end
