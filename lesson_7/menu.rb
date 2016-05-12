class Menu
  def initialize
    @train = {}
    @station = {}
    @stations = []
  end

  def run
    loop do
      puts "1 - create train"
      puts "2 - create station"
      puts "3 - create wagon"
      puts "4 - take place"
      puts "5 - send train on station"
      puts "6 - show train on station"
      puts "7 - show wagons of trains"
      puts "8 - add wagon to train"
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
      when 5
        send_train
      when 6
        show_train
      when 7
        show_wagon
      when 8
        add_wagon
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
      @train[number] = train
    elsif type == "cargo"
      train = CargoTrain.new(number)
      puts train.inspect
      @train[number] = train
    else
      raise "Train's type isn't correct"
    end
  rescue Exception => e
    puts e.message
    retry
  end

  def create_station
    print "Station's name: "
    name = gets.chomp
    station = Station.new(name)
    puts station.inspect
    @station[name] = station
    @stations << station
  rescue Exception => e
    puts e.message
    retry
  end

  def create_wagon
    print "Wagon's type (passenger/cargo): "
    type = gets.chomp
    print "Enter seat/volume for wagon: "
    points = gets.chomp.to_i
    if type == "passenger"
      @wagon = PassengerWagon.new(points)
    elsif type == "cargo"
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

  def send_train
    print "Enter station: "
    station = gets.chomp
    print "Enter train's number "
    number = gets.chomp
    raise "Station or train isn't exist" if @station[station].nil? or @train[number].nil?
    @station[station].accept_train(@train[number], number)
    puts "Train number #{number} arrived on station #{station}"
  rescue Exception => e
    puts e.message
  end

  def show_train
    print "Enter station: "
    name = gets.chomp
    station = @station[name]
    station.each_train(&proc_train(station))
  end

  def show_wagon
    print "Enter train's number: "
    number = gets.chomp 
    train = @train[number]
    train.each_wagon(&proc_wagon(train))
  end

  def add_wagon
    print "Enter train's number: "
    number = gets.chomp
    train = @train[number]
    train.new_wagon(@wagon)
  end  
end