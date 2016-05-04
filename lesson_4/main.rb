require_relative 'route'
require_relative 'train'
require_relative 'station'
require_relative 'passenger_train'
require_relative 'cargo_train'
require_relative 'wagon'
require_relative 'passenger_wagon'
require_relative 'cargo_wagon'

route = Route.new("Moscow", "Dnepropetrovsk")
route.new_station("Harkov")
route.new_station("Belgorod")
route.new_station("Kursk")
route.destroy_station("Harkov")
route.show_route

passenger_train = PassengerTrain.new("7B", 20)
cargo_train = CargoTrain.new("1A", 40)

passenger_wagon = PassengerWagon.new
passenger_train.new_wagon(passenger_wagon)

cargo_wagon = CargoWagon.new
cargo_train.destroy_wagon(cargo_wagon)

station = Station.new("Kursk")
station.accept_train("7B")
station.accept_train("1A")
station.show_train