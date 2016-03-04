require './lib/docking_station'
require './lib/bike'

p station = DockingStation.new
#p bike = Bike.new
# p station.park_bike(bike)
# p station.park_bike(Bike.new)


# p station.release_bike

# p bike = station.release_bike
# p bike.working?
# p station.park_bike(bike)
#
# p station.park_bike(bike)
# p station.park_bike(bike) == station.bike

p 20.times {station.park_bike Bike.new}
