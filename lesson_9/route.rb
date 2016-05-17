class Route
  def initialize(initial_station, final_station)
    @initial_station = initial_station
    @final_station = final_station
    validate!
    @arr_station = []
    @arr_station << @initial_station
    @arr_station << @final_station
  end

  def new_station(name_station)
    @name_station = name_station
    @arr_station.insert(1, @name_station)
  end

  def destroy_station(name_station)
    @name_station = name_station
    if @arr_station.include?(name_station)
      @arr_station.delete(@name_station)
    else
      puts "#{name_station} isn't include in route"
    end
  end

  def show_route
    @arr_station
  end

  def valid?
    validate!
  rescue
    false
  end

  protected

  # rubocop:disable Metrics/LineLength
  def validate!
    raise "Station's name, should be at least 2 symbols" if @initial_station.length < 2 || @final_station.length < 2
    true
  end
  # rubocop:enable Metrics/LineLength
end
