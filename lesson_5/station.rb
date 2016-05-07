class Station < Train  
  @@arr_train_on_station = []
  @@array_station = []
  
  def initialize(name_station)
    @name_station = name_station
    @@array_station << self
  end

  def self.all
    puts @@array_station
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
    puts @@arr_train_on_station.join(", ")
  end  
end