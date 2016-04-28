require_relative 'route'
require_relative 'train'
require_relative 'station'

route = Route.new("Moscow", "Spb")
route.new_station("Tambov")
route.new_station("Kazan")
route.destroy_station("Kazan")
route.show_route

train_1 = Train.new(7, "passenger", 20)
train_1.save
train_2 = Train.new(31, "passenger", 22)
train_2.save
train_3 = Train.new("1A", "freight", 47)
train_3.save

station_1 = Station.new("Tambov")
station_1.accept_train(7)
station_1.accept_train(31)
station_1.accept_train("1A")
station_1.destroy_train(7)
station_1.show_train
station_1.show_kind_quantity

train_1.new_wagon
train_3.destroy_wagon
train_1.route_train
train_1.arrive("Tambov")