class Menu
  def run
    loop do
      puts "1 - create train"
      puts "2 - create station"
      puts "0 - exit"
      print "Make your choice: "
      choice = gets.chomp.to_i
    break if choice == 0

    case choice
      when 1
        create_train
      when 2
        create_station
      end                  
  end
end

private

  def create_train
    print "Number of trian: "
    number = gets.chomp
    print "Quantity wagons: "
    quantity = gets.chomp
    print "Train's type (passenger/cargo): "
    type = gets.chomp
    if type == "passenger"
      train = PassengerTrain.new(number, quantity)
      puts train.inspect
    elsif type == "cargo"
      train = CargoTrain.new(number, quantity)
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
end

