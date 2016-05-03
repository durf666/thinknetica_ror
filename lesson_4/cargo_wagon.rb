class CargoWagon < Wagon
  def new(train)
    if train.class == CargoTrain
      super
    else
      puts "This kind of wagon isn't for this train"
    end
  end

  def destroy(train)
    if train.class == CargoTrain
      super
    else
      puts "This kind of wagon isn't for this train"
    end
  end
end