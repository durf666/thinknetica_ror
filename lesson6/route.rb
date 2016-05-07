class Route
  @@arr_station = []

  def initialize(initial_station, final_station)
    @initial_station = initial_station
    @final_station = final_station
    @@arr_station << @initial_station
    @@arr_station << @final_station
    validate_route!
    rescue StandardError
      puts "Argument isn't correct"
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
    @@arr_station
  end

  def valid_route?
    validate_route!
  rescue
    false
  end

  protected

  def validate_route!
    raise "Station's name can't be nil" if @initial_station.nil? or @final_station.nil?
    raise "Station's name, should be at least 3 symbols" if @initial_station.length < 3 or @final_station.length < 3
    true 
  end
end