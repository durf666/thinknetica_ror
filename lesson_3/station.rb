class Station < Train  
  @@arr_train_on_station = []
  @@arr_kind_quantity = []
  @@hash_train = Hash.new(0)
  
  def initialize(name_station)
    @name_station = name_station    
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

  def show_kind_quantity
    @@hash_kind_quantity.each { |key, value| @@arr_kind_quantity << value if @@arr_train_on_station.include?(key) }
    @@arr_kind_quantity.each { |item| @@hash_train[item] += 1 }
    @@hash_train.each { |kind, quantity| puts kind.to_s + " " + quantity.to_s }
  end
end