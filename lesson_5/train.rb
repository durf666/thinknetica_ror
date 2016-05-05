class Train < Route
  @@arr_train = []
  @@hash_train = {}
  
  include Producer
  attr_accessor :speed
  attr_reader   :quantity_wagon
  attr_reader   :wagons

  def initialize(speed=0, number_train, quantity_wagon)
    @number_train = number_train
    @quantity_wagon = quantity_wagon    
    @speed = speed
    @@arr_train << @number_train
    @wagons = []
    @@hash_train[@number_train] = self   
  end

  def self.find(number_train)
    puts @@hash_train[number_train]
  end  

  def stop
    self.speed = 0
  end

  def new_wagon(wagon)
    @wagons << @wagon if @speed == 0
  end

  def destroy_wagon(wagon)
    @quantity_wagon -= 1 if @speed == 0
    puts @quantity_wagon
  end

  def route_train
    puts @@arr_station.join(", ")
  end

  def arrive(name_station)
    @name_station = name_station
    if @@arr_station.include?(@name_station)
      puts "Train arrived in #{name_station}"
    else
      puts "This station isn't include in route"
    end

    hash = Hash[@@arr_station.map.with_index.to_a]
    index = hash[@name_station]

    if index == nil
      puts "Try to enter other station"
    elsif index == 0
      puts "It's initial station, next station is #{@@arr_station[index + 1]}"
    elsif index == @@arr_station.size - 1
      puts "It's final station, previous station is #{@@arr_station[index - 1]}"
    else
      puts "previous station is #{@@arr_station[index - 1]}, next station is #{@@arr_station[index + 1]}"
    end
  end
end