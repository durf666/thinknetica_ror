class CargoTrain < Train
  def new_wagon(wagon)
    if wagon.class == CargoWagon
      super(wagon)
    else
      puts 'false'
    end
  end
end
