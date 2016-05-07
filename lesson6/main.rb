require_relative 'producer'
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
puts route.show_route

passenger_train = PassengerTrain.new("111-7B", "20")
cargo_train = CargoTrain.new("222-1A", "40")

passenger_train.name_company = "RZD"
cargo_train.name_company = "SIEMENS"
puts passenger_train.name_company
puts cargo_train.name_company

passenger_wagon = PassengerWagon.new
passenger_train.new_wagon(passenger_wagon)

cargo_wagon = CargoWagon.new
cargo_train.new_wagon(cargo_wagon)

station = Station.new("Kursk")
station.accept_train("111-7B")
station.accept_train("222-1A")
puts station.show_train
puts Station.all
puts PassengerTrain.find("111-7B")
puts CargoTrain.find("222-1A")