module Wagon
  def new(train)
    train.new_wagon 
  end

  def destroy(train)
    train.destroy_wagon
  end  
end

class PassengerWagon
  include Wagon  
end

class CargoWagon
  include Wagon 
end