class Route
  @@arr_station = []

  def initialize(initial_station, final_station)
    @initial_station = initial_station
    @final_station = final_station
    @@arr_station << @initial_station
    @@arr_station << @final_station
  end

  def new_station(name_station)
     @name_station = name_station
     @@arr_station.insert(1, @name_station).join(", ") 
  end

  def destroy_station(name_station)
    @name_station = name_station
    if @@arr_station.include?(name_station)
      @@arr_station.delete(@name_station)
    else
      puts "#{name_station} isn't include in route"
    end
  end

  def show_route
    puts @@arr_station.join(", ")
  end
end