require_relative 'producer'
require_relative 'route'
require_relative 'train'
require_relative 'station'
require_relative 'passenger_train'
require_relative 'cargo_train'
require_relative 'wagon'
require_relative 'passenger_wagon'
require_relative 'cargo_wagon'
require_relative 'menu.rb'

s1 = Station.new('s1')
s2 = Station.new('s2')
s3 = Station.new('s3')

stations = Station.all

pt1 = PassengerTrain.new('p1000')
pt2 = PassengerTrain.new('p2000')
pt3 = PassengerTrain.new('p3000')

ct1 = CargoTrain.new('c1000')
ct2 = CargoTrain.new('c2000')
ct3 = CargoTrain.new('c3000')

pt4 = PassengerTrain.new('p4000')
pw41 = PassengerWagon.new(100)
pt4.new_wagon(pw41)
90.times { pw41.occupy_seat }

2.times { pt1.new_wagon(PassengerWagon.new(100)) }
3.times { pt2.new_wagon(PassengerWagon.new(150)) }
4.times { pt3.new_wagon(PassengerWagon.new(80)) }

5.times { ct1.new_wagon(CargoWagon.new(100)) }
3.times { ct2.new_wagon(CargoWagon.new(100)) }
4.times { ct3.new_wagon(CargoWagon.new(100)) }

s1.accept_train(pt1, 'p1000')
s1.accept_train(pt2, 'p2000')
s1.accept_train(ct3, 'c3000')

s2.accept_train(ct2, 'c2000')
s2.accept_train(pt3, 'p3000')

s3.accept_train(ct1, 'c1000')
s3.accept_train(pt4, 'p4000')

stations.each do |station|
  station.each do |number, train|
    puts "____________________________________________________________________"
    puts "Station #{stations.index(station) + 1} - train's number: #{number}, type: #{train.class}, wagons: #{train.wagons.size}"
      train.wagons.each do |wagon|
        print "wagon: #{train.wagons.index(wagon) + 1}, type: #{wagon.class}, "
        if wagon.class == PassengerWagon
          puts "free seats: #{wagon.seat}, occupied seats: #{wagon.occupied}"
        end
        if wagon.class == CargoWagon
          puts "free volume: #{wagon.free}, occupied volume: #{wagon.occupy_volume}"
        end
      end
  end
end

Menu.new.run