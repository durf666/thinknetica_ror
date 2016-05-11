class Menu
  def run
    loop do
      puts "1 - create train"
      puts "2 - create station"
      puts "3 - create wagon"
      puts "4 - take place"
      puts "0 - exit"
      print "Make your choice: "
      choice = gets.chomp.to_i
    break if choice == 0

    case choice
      when 1
        create_train
      when 2
        create_station
      when 3
        create_wagon
      when 4
        take_place
      end                  
  end
end

private

  def create_train
    print "Number of trian: "
    number = gets.chomp
    print "Train's type (passenger/cargo): "
    type = gets.chomp
    if type == "passenger"
      train = PassengerTrain.new(number)
      puts train.inspect
    elsif type == "cargo"
      train = CargoTrain.new(number)
      puts train.inspect
    else
      raise ArgumentError, "Train's type isn't correct"
    end
  rescue Exception => e
    puts e.message
    retry
  end

  def create_station
    print "Station's name: "
    name = gets.chomp
    name = Station.new(name)
    puts name.inspect
  rescue Exception => e
    puts e.message
    retry
  end

  def create_wagon
    print "Wagon's type (passenger/cargo): "
    wagon = gets.chomp
    print "Enter seat/volume for wagon: "
    points = gets.chomp.to_i
    if wagon == "passenger"
      @wagon = PassengerWagon.new(points)
    elsif wagon == "cargo"
      @wagon = CargoWagon.new(points)
    else
      puts "You made mistake!"
    end
  end

  def take_place
    print "Occupy volume for CargoTrain (for PassengerTrain any value): "
    number = gets.chomp.to_i
    if @wagon.class == PassengerWagon
      puts "Free seat: #{@wagon.seat}" if @wagon.seat >= 0       
    elsif @wagon.class == CargoWagon
      @wagon.occupy_volume = number
      puts "Free volume: #{@wagon.free}" if @wagon.free >= 0
    else
      puts "This wagon isn't exist"
    end
  end     
end