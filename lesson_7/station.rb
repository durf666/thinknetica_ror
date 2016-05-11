class Station < Train  
  @@array_station = []
    
  def initialize(name_station)
    @name_station = name_station
    validate_station!
    @arr_train_on_station = []
    @hash_train_on_station = {}
    @@array_station << self
  end

  def each(&block)
    @hash_train_on_station.each { |number, train| yield(number, train) }
  end

  def self.all
    @@array_station
  end

  def accept_train(train, number) 
    #@number_train = number_train
    #if @@arr_train.include?(@number_train)
      @arr_train_on_station << train
      @hash_train_on_station[number] = train
    #else
     # puts "Train number #{number_train} isn't exist"
    #end
  end

  def destroy_train(number_train)
    @number_train = number_train
    if @@arr_train.include?(@number_train)
      @arr_train_on_station.delete(@number_train)
    else
      puts "Train number #{number_train} absent on station #{@name_station}"
    end
  end

  def show_train
    @arr_train_on_station
  end

  def valid_station?
    validate_station!
  rescue
    false
  end

  protected

  def validate_station!    
    raise "Station's name, should be at least 2 symbols" if @name_station.length < 2
    true 
  end
end