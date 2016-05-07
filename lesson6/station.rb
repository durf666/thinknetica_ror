class Station < Train  
  @@arr_train_on_station = []
  @@array_station = []
  
  def initialize(name_station)
    @name_station = name_station
    @@array_station << self
    validate_station!
    rescue StandardError
      puts "Argument isn't correct"
  end

  def self.all
    @@array_station
  end

  def accept_train(number_train) 
    @number_train = number_train
    if @@arr_train.include?(@number_train)
      @@arr_train_on_station << @number_train
    else
      puts "Train number #{number_train} isn't exist"
    end
  end

  def destroy_train(number_train)
    @number_train = number_train
    if @@arr_train.include?(@number_train)
      @@arr_train_on_station.delete(@number_train)
    else
      puts "Train number #{number_train} absent on station #{@name_station}"
    end
  end

  def show_train
    @@arr_train_on_station
  end

  def valid_station?
    validate_station!
  rescue
    false
  end

  protected

  def validate_station!
    raise "Station's name can't be nil" if @name_station.nil?
    raise "Station's name, should be at least 3 symbols" if @name_station.length < 3
    true 
  end
end