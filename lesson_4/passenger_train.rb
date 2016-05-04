class PassengerTrain < Train
  def new_wagon(wagon)
    if wagon.class == PassengerWagon
      super(wagon)
    else
      puts "false"
    end
  end

  def destroy_wagon(wagon)
    if wagon.class == PassengerWagon
      super(wagon)
    else
      puts "false"
    end
  end
end